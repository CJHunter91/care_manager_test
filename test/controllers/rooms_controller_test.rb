require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest

  test "should get index room" do
    assert_routing({ method: 'get', path: '/rooms' }, { controller: "rooms", action: "index" })
  end

  test "should get show room" do
    assert_routing({ method: 'get', path: '/rooms/1' }, { controller: "rooms", action: "show", id: "1" })
  end

  test "should create room" do 
    assert_routing({ method: 'post', path: '/rooms' }, { controller: "rooms", action: "create"})
  end

  test "should add new room" do 
    assert_routing({ method: 'get', path: '/rooms/new' }, { controller: "rooms", action: "new" })
  end

  test "should destroy room" do 
    assert_routing({ method: 'delete', path: '/rooms/1' }, { controller: "rooms", action: "destroy", id: "1" })
  end

  test "should edit room" do 
    assert_routing({ method: 'get', path: '/rooms/1/edit' }, { controller: "rooms", action: "edit", id: "1" })
  end

  test "should update room" do 
    assert_routing({ method: 'put', path: '/rooms/1' }, { controller: "rooms", action: "update", id: "1" })
  end

end
