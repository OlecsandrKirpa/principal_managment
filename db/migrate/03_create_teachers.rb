class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.text :first_name,     null: false
      t.text :last_name,      null: false
      t.text :cdc,            null: false
      t.integer :status_id,   null: false

      t.timestamps
    end
  end
end
