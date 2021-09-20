require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get userTop" do
    get pages_userTop_url
    assert_response :success
  end

end
