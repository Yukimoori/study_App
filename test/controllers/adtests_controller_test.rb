require 'test_helper'

class AdtestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adtests_index_url
    assert_response :success
  end

end
