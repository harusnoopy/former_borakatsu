require "test_helper"

class Public::OrganizersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_organizers_show_url
    assert_response :success
  end
end
