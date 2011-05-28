class CreateLetters < ActiveRecord::Migration
  def self.up
    create_table :letters do |t|
      t.date :datewritten
      t.string :author
      t.text :letter
      t.string :recipient

      t.timestamps
    end
    add_index :letters :user_id
  end

  def self.down
    drop_table :letters
  end
end
