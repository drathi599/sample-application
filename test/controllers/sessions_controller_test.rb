require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  # get login -> give login page (new)
  # post login -> create session object
  # delete login -> destroy session
  test "should get new" do
    get login_path
    assert_response :success
  end
end