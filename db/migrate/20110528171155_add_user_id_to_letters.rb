class AddUserIdToLetters < ActiveRecord::Migration
  def self.up
    add_column :letters, :user_id, :integer
  end

  def self.down
    remove_column :letters, :user_id
  end
end
