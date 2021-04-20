class CreateHours < ActiveRecord::Migration[6.1]
  def change
    create_table :hours do |t|
      t.integer :school_class_id
      t.integer :room_id
      t.integer :teacher_id
      t.date :date
      t.integer :schedule_id
      t.time :begin
      t.time :end

      t.timestamps
    end
  end
end
