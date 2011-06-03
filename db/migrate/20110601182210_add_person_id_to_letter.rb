class AddPersonIdToLetter < ActiveRecord::Migration
  def self.up
    add_column :letters, :person_id, :integer
  end

  def self.down
    remove_column :letters, :person_id
  end
end
