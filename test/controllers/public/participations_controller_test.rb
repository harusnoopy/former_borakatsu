require "test_helper"

class Public::ParticipationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_participations_new_url
    assert_response :success
  end

  test "should get confirmation" do
    get public_participations_confirmation_url
    assert_response :success
  end

  test "should get thanx" do
    get public_participations_thanx_url
    assert_response :success
  end

  test "should get index" do
    get public_participations_index_url
    assert_response :success
  end

  test "should get show" do
    get public_participations_show_url
    assert_response :success
  end
end
