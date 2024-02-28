require "test_helper"

class RoomFeaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_feature = room_features(:one)
  end

  test "should get index" do
    get room_features_url
    assert_response :success
  end

  test "should get new" do
    get new_room_feature_url
    assert_response :success
  end

  test "should create room_feature" do
    assert_difference("RoomFeature.count") do
      post room_features_url, params: { room_feature: { code: @room_feature.code, name: @room_feature.name, room_master_id: @room_feature.room_master_id } }
    end

    assert_redirected_to room_feature_url(RoomFeature.last)
  end

  test "should show room_feature" do
    get room_feature_url(@room_feature)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_feature_url(@room_feature)
    assert_response :success
  end

  test "should update room_feature" do
    patch room_feature_url(@room_feature), params: { room_feature: { code: @room_feature.code, name: @room_feature.name, room_master_id: @room_feature.room_master_id } }
    assert_redirected_to room_feature_url(@room_feature)
  end

  test "should destroy room_feature" do
    assert_difference("RoomFeature.count", -1) do
      delete room_feature_url(@room_feature)
    end

    assert_redirected_to room_features_url
  end
end
