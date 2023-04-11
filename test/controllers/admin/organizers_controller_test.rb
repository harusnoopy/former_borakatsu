require "test_helper"

class Admin::OrganizersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_organizers_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_organizers_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_organizers_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_organizers_edit_url
    assert_response :success
  end
end
