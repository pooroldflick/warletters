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
end
