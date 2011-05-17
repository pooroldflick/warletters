class User < ActiveRecord::Base
  has_many :letters

  validates_presence_of :name
  validates_presence_of :email
end
