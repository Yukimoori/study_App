require 'test_helper'

class UserboxesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get userboxes_index_url
    assert_response :success
  end

end
