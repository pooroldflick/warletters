class AddLetterIdToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :letter_id, :integer
  end

  def self.down
    remove_column :people, :letter_id
  end
end
