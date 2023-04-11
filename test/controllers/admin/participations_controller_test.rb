require "test_helper"

class Admin::ParticipationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_participations_index_url
    assert_response :success
  end
end
