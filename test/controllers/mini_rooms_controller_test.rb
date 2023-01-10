require 'test_helper'

class MiniRoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mini_rooms_index_url
    assert_response :success
  end

end
