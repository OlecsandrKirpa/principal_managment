# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Status.new(name: "active", description: "This item is not active.", color: "#00FF00").save
Status.new(name: "disabled", description: "This item is not active.", color: "#FFFF00").save
Status.new(name: "deleted", description: "**This item has been deleted**", color: "#FF0000").save

Teacher.create(first_name: "Marco", last_name: "Vianello", cdc: "A-22", status_id: Status.first.id)
Teacher.create(first_name: "Massimiliano", last_name: "Bullo", cdc: "A-41", status_id: Status.first.id)
Teacher.create(first_name: "Elisabetta", last_name: "Stevanato", cdc: "A002", status_id: Status.first.id)

Room.create(name: "No class", photo_url: "", equipment: "{}", status_id: Status.second.id)
Room.create(name: "LAP1", photo_url: "", equipment: "{computer: 21}", status_id: Status.first.id)
Room.create(name: "LAS1", photo_url: "", equipment: "{computer: 25}", status_id: Status.first.id)
Room.create(name: "LAP2", photo_url: "", equipment: "{computer: 15}", status_id: Status.first.id)

SchoolClass.create(year: 5, section: "IC", students: 21, room_id: 1, status_id: Status.first.id)
SchoolClass.create(year: 4, section: "IB", students: 21, room_id: 1, status_id: Status.first.id)
SchoolClass.create(year: 3, section: "ID", students: 21, room_id: 1, status_id: Status.first.id)

# rails db:drop && rails db:create && rails db:migrate && rails db:seed