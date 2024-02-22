require "test_helper"

class RoomMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_master = room_masters(:one)
  end

  test "should get index" do
    get room_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_room_master_url
    assert_response :success
  end

  test "should create room_master" do
    assert_difference("RoomMaster.count") do
      post room_masters_url, params: { room_master: { block: @room_master.block, floor: @room_master.floor, key_code: @room_master.key_code, maximum_clean_time: @room_master.maximum_clean_time, occupancy: @room_master.occupancy, room_no: @room_master.room_no, room_type: @room_master.room_type, roomtype_id: @room_master.roomtype_id } }
    end

    assert_redirected_to room_master_url(RoomMaster.last)
  end

  test "should show room_master" do
    get room_master_url(@room_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_master_url(@room_master)
    assert_response :success
  end

  test "should update room_master" do
    patch room_master_url(@room_master), params: { room_master: { block: @room_master.block, floor: @room_master.floor, key_code: @room_master.key_code, maximum_clean_time: @room_master.maximum_clean_time, occupancy: @room_master.occupancy, room_no: @room_master.room_no, room_type: @room_master.room_type, roomtype_id: @room_master.roomtype_id } }
    assert_redirected_to room_master_url(@room_master)
  end

  test "should destroy room_master" do
    assert_difference("RoomMaster.count", -1) do
      delete room_master_url(@room_master)
    end

    assert_redirected_to room_masters_url
  end
end
