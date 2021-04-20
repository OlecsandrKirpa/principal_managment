json.extract! reservation, :id, :teacher_id, :room_id, :school_class_id, :hour_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
