require 'test_helper'

class TictactoeControllerTest < ActionController::TestCase
  test "should get play_tictactoe" do
    get :play_tictactoe
    assert_response :success
  end

end
