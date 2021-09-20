require 'test_helper'

class AdusersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adusers_index_url
    assert_response :success
  end

end
