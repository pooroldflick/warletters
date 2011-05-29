class AddVisabilityToLetters < ActiveRecord::Migration
  def self.up
    add_column :letters, :visability, :boolean
  end

  def self.down
    remove_column :letters, :visability
  end
end
