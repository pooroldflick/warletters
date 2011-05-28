# == Schema Information
# Schema version: 20110516183001
#
# Table name: letters
#
#  id          :integer         not null, primary key
#  datewritten :date
#  author      :string(255)
#  letter      :text
#  recipient   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Letter < ActiveRecord::Base
  belongs_to :user
  belongs_to :projects

  attr_accessible :datewritten, :author, :letter, :recipient

  default_scope :order => 'letters.datewritten'
end
