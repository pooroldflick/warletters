# == Schema Information
# Schema version: 20110516183001
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i		# regular expression of valid email addresses

  has_many :letters						# Users have many letters

  validates_presence_of :name,  :presence   => true, 		 	# requires users to enter a name
				:length     => { :maximum => 50 } 	# limits the length of names to 50
  validates_presence_of :email, :presence   => true,	  	  	# requires users to enter an email
				:format     => { :with => email_regex },	# valid email
 				:uniqueness => { :case_sensitive => false }   	# :uniqueness => true is implicit
  attr_accessible :name, :email					  	# allows users to edit their name and email
end
