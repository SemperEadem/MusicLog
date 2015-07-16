require 'test_helper'

class PathsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
