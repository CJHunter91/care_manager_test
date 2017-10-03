class Room < ApplicationRecord
  has_many :residents

  def self.get_available_rooms(residents)
    @rooms = Room.all
    available = []
    resident_rooms = residents.map{|resident| @rooms.find(resident.room_id).room_no}
    @rooms.each do |room|
      available.append(room) if resident_rooms.count(room.room_no) < room.capacity
    end
    return available
  end
end
