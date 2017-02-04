require 'test_helper'

class FoursquareControllerTest < ActionController::TestCase
  test "should get auth" do
    get :auth
    assert_response :success
  end

  test "should get check_ins" do
    get :check_ins
    assert_response :success
  end

end
