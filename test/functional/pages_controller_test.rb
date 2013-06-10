require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get competition" do
    get :competition
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

  test "should get photos" do
    get :photos
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get sponsors" do
    get :sponsors
    assert_response :success
  end

end
