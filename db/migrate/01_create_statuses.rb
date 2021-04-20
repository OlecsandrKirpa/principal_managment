class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.text :name,         null: false
      t.text :description,  null: false, default: ""
      t.text :color,        null: false, default: ""
      
      t.timestamps
    end
  end
end
