require 'test_helper'

class PsychicControllerTest < ActionController::TestCase
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

  test "should get see_future" do
    get :see_future
    assert_response :success
  end

  test "should get cast_spell" do
    get :cast_spell
    assert_response :success
  end

end
