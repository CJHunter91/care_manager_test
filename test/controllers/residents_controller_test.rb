require 'test_helper'

class ResidentsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get index" do
    assert_routing({ method: 'get', path: '/' }, { controller: "residents", action: "index" })
  end

  test "should get show" do
    assert_routing({ method: 'get', path: '/residents/1' }, { controller: "residents", action: "show", id: "1" })
  end

  test "should create resident" do 
    assert_routing({ method: 'post', path: '/residents' }, { controller: "residents", action: "create"})
  end

  test "should add new resident" do 
    assert_routing({ method: 'get', path: '/residents/new' }, { controller: "residents", action: "new" })
  end

  test "should destroy resident" do 
    assert_routing({ method: 'delete', path: '/residents/1' }, { controller: "residents", action: "destroy", id: "1" })
  end

  test "should edit resident" do 
    assert_routing({ method: 'get', path: '/residents/1/edit' }, { controller: "residents", action: "edit", id: "1" })
  end

  test "should update resident" do 
    assert_routing({ method: 'put', path: '/residents/1' }, { controller: "residents", action: "update", id: "1" })
  end

end
