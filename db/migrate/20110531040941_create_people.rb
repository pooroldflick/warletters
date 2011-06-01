class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.text :bio
      t.boolean :service
      t.string :regiment
      t.string :company
      t.string :mustered_in
      t.string :mustered_out
      t.integer :letter_id
      t.integer :user_id
      t.integer :project_id
      t.string :side

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
