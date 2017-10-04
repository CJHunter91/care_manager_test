require 'test_helper'

class ResidentsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get index" do
    assert_routing({ method: 'get', path: '/' }, { controller: "residents", action: "index" })
  end

  test "should get show" do
    assert_routing({ method: 'get', path: '/residents/1' }, { controller: "residents", action: "show", id: "1" })
  end

  test "should destroy resident" do 
    assert_routing({ method: 'delete', path: '/residents/1' }, { controller: "residents", action: "destroy", id: "1" })
  end

end
