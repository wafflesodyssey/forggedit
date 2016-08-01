require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    ressponse = get :index
    assert_response :success
    assert_includes response.body, "comments"
  end

end
