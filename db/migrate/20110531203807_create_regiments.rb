class CreateRegiments < ActiveRecord::Migration
  def self.up
    create_table :regiments do |t|
      t.string :ordinal
      t.boolean :volunteer
      t.string :state
      t.string :reg_type
      t.string :company
      t.boolean :independent
      t.string :name
      t.string :nickname
      t.text :notes
      t.integer :person_id
      t.integer :battle_id
      t.integer :corps_id
      t.integer :brigade_id
      t.integer :division_id
      t.integer :army_id

      t.timestamps
    end
  end

  def self.down
    drop_table :regiments
  end
end
