class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :teacher_id,        null: false
      t.integer :room_id,           null: false
      t.integer :school_class_id,   null: false
      t.integer :hour_id,           null: false

      t.timestamps
    end
  end
end
