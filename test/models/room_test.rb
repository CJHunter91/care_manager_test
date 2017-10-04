require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "checks if number exists" do
    assert Room.number_exists?(Room.first.room_no)
  end
end
