class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.text    :name,       null: false
      t.text    :photo_url,  null: false
      t.text    :equipment,  null: false
      t.integer :status_id,     null: false, default: 1

      t.timestamps
    end
  end
end
