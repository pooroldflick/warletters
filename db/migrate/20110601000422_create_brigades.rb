class CreateBrigades < ActiveRecord::Migration
  def self.up
    create_table :brigades do |t|
      t.string :identity
      t.integer :regiment_id
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :brigades
  end
end
