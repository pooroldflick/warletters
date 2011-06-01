class Person < ActiveRecord::Base

belongs_to :user
has_and_belongs_to_many :letters

attr_accessible :name, :bio, :service, :regiment, :company, :mustered_in, :mustered_out, :side

end
