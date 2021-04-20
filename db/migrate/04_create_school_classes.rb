class CreateSchoolClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :school_classes do |t|
      t.integer :year,      null: false
      t.string :section,    null: false
      t.integer :students,  null: false, default: 0
      t.integer :room_id,   null: false
      t.integer :status_id, null: false

      t.timestamps
    end
  end
end
