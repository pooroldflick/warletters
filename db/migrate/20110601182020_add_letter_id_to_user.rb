class AddLetterIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :letter_id, :integer
  end

  def self.down
    remove_column :users, :letter_id
  end
end
