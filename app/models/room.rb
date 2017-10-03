class Room < ApplicationRecord
  has_many :residents

  def self.get_available_rooms(residents)
    rooms = Room.all
    available = []
    resident_rooms = residents.map{|resident| rooms.find(resident.room_id).room_no}
    rooms.each do |room|
      available.append(room) if resident_rooms.count(room.room_no) < room.capacity
    end
    return available
  end

  def self.number_exists?(number)
    rooms = Room.all
    room_numbers = rooms.map{|room| room.room_no}
    return room_numbers.include? number.to_i
  end
end
