# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Resident.delete_all
Room.delete_all

room1 = Room.create(room_no: 1, premier: false, en_suite: false, capacity: 1)
room2 = Room.create(room_no: 2, premier: false, en_suite: true, capacity: 2)
room3 = Room.create(room_no: 3, premier: true, en_suite: true, capacity: 1)
room4 = Room.create(room_no: 4, premier: true, en_suite: true, capacity: 1)
room5 = Room.create(room_no: 5, premier: true, en_suite: true, capacity: 1)
room6 = Room.create(room_no: 6, premier: true, en_suite: true, capacity: 1)
room7 = Room.create(room_no: 7, premier: true, en_suite: true, capacity: 1)


resident1 = Resident.create(first_name: 'Walter', last_name: 'Scott', dob: "05-05-1935", room: room1)
resident2 = Resident.create(first_name: 'Judy', last_name: 'Dench', dob: "09-12-1934", room: room3)
resident3 = Resident.create(first_name: 'Dan', last_name: 'Hunter', dob: "09-12-1939", room: room2)
resident4 = Resident.create(first_name: 'Rae', last_name: 'Hunter', dob: "09-12-1940", room: room2)
resident5 = Resident.create(first_name: 'John', last_name: 'Wozniak', dob: "09-12-1940", room: room4)
resident6 = Resident.create(first_name: 'Joe', last_name: 'Bloggs', dob: "09-12-1940", room: room5)
resident7 = Resident.create(first_name: 'Julie', last_name: 'Bloggs', dob: "09-12-1940", room: room6)
resident8 = Resident.create(first_name: 'Stephen', last_name: 'Beattie', dob: "09-12-1940", room: room7)
