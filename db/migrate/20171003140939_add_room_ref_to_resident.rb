class AddRoomRefToResident < ActiveRecord::Migration[5.1]
  def change
    add_reference :residents, :room, foreign_key: true
  end
end
