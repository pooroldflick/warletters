class Person < ActiveRecord::Base

belongs_to :user
belongs_to :project
has_and_belongs_to_many :letter

attr_accessible :name, :bio, :service, :regiment, :company, :mustered_in, :mustered_out, :side

end
