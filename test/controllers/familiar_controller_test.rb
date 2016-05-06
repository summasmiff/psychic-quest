require 'test_helper'

class FamiliarControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get catchphrase" do
    get :catchphrase
    assert_response :success
  end

end
