json.extract! room, :id, :name, :photo_url, :equipment, :created_at, :updated_at
json.url room_url(room, format: :json)
