# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 6) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hours", force: :cascade do |t|
    t.integer "school_class_id"
    t.integer "room_id"
    t.integer "teacher_id"
    t.date "date"
    t.integer "schedule_id"
    t.time "begin"
    t.time "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "room_id", null: false
    t.integer "school_class_id", null: false
    t.integer "hour_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.text "name", null: false
    t.text "photo_url", null: false
    t.text "equipment", null: false
    t.integer "status_id", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "school_classes", force: :cascade do |t|
    t.integer "year", null: false
    t.string "section", null: false
    t.integer "students", default: 0, null: false
    t.integer "room_id", null: false
    t.integer "status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.text "name", null: false
    t.text "description", default: "", null: false
    t.text "color", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.text "first_name", null: false
    t.text "last_name", null: false
    t.text "cdc", null: false
    t.integer "status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
