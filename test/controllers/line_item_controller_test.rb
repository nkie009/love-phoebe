require 'test_helper'

class LineItemControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get line_item_update_url
    assert_response :success
  end

end
