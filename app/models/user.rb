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
  has_many :letters		# Users have many letters

  validates_presence_of :name 	# requires users to enter a name
  validates_presence_of :email	# requires users to enter an email

  attr_accessible :name, :email	# allows users to edit their name and email
end
