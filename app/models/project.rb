class Project < ActiveRecord::Base

  has_and_belongs_to_many :letters
  has_many :users

  attr_accessible :title, :description

end
