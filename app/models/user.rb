# == Schema Information
# Schema version: 20110521150302
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#

class User < ActiveRecord::Base
  attr_accessor   :password		# creates a password attribute
  attr_accessible :name, :email, :password, :password_confirmation		# allows users to edit their name and email

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i				# regular expression of valid email addresses

  has_many :letters								# Users have many letters

  validates		        :name,  :presence      => true, 		# requires users to enter a name
				:length     => { :maximum => 50 } 		# limits the length of names to 50

  validates			 :email, :presence     => true,	  	  	# requires users to enter an email
				:format     => { :with => email_regex },	# valid email
 				:uniqueness => { :case_sensitive => false }   	# :uniqueness => true is implicit

  validates			:password, :presence     => true,		# validates the presence of a password
					   :confirmation => true,		# confirms and creates a password confirmation attribute
					   :length	 => { :within => 6..40 }

  before_save			:encrypt_password				# encypted password callback will only be used in a User object

  private

    def has_password?(submitted_password)
      encrypted_password == encrypted(submitted_password)
    end
  
  class << self									# Anything in this block is in the class level of self.
    def authenticate(email, submitted_password)
      user = find_by_email(email)
      return nil      if user.nil?
      return user     if user.has_password?(submitted_password)      
    end
  end

    def encrypt_password
      self.salt = sale_make if new_record
      self.encrypted_password = encrypt(password)				#self changes the attribute on the object and prevents it from being a local variable
    end

    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end

end
