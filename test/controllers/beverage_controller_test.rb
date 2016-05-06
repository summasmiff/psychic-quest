require 'test_helper'

class BeverageControllerTest < ActionController::TestCase
  test "should get pour" do
    get :pour
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get drink" do
    get :drink
    assert_response :success
  end

  test "should get mix" do
    get :mix
    assert_response :success
  end

end
