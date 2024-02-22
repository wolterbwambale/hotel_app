require "application_system_test_case"

class RoomMastersTest < ApplicationSystemTestCase
  setup do
    @room_master = room_masters(:one)
  end

  test "visiting the index" do
    visit room_masters_url
    assert_selector "h1", text: "Room masters"
  end

  test "should create room master" do
    visit room_masters_url
    click_on "New room master"

    fill_in "Block", with: @room_master.block
    fill_in "Floor", with: @room_master.floor
    fill_in "Key code", with: @room_master.key_code
    fill_in "Maximum clean time", with: @room_master.maximum_clean_time
    fill_in "Occupancy", with: @room_master.occupancy
    fill_in "Room no", with: @room_master.room_no
    fill_in "Room type", with: @room_master.room_type
    fill_in "Roomtype", with: @room_master.roomtype_id
    click_on "Create Room master"

    assert_text "Room master was successfully created"
    click_on "Back"
  end

  test "should update Room master" do
    visit room_master_url(@room_master)
    click_on "Edit this room master", match: :first

    fill_in "Block", with: @room_master.block
    fill_in "Floor", with: @room_master.floor
    fill_in "Key code", with: @room_master.key_code
    fill_in "Maximum clean time", with: @room_master.maximum_clean_time
    fill_in "Occupancy", with: @room_master.occupancy
    fill_in "Room no", with: @room_master.room_no
    fill_in "Room type", with: @room_master.room_type
    fill_in "Roomtype", with: @room_master.roomtype_id
    click_on "Update Room master"

    assert_text "Room master was successfully updated"
    click_on "Back"
  end

  test "should destroy Room master" do
    visit room_master_url(@room_master)
    click_on "Destroy this room master", match: :first

    assert_text "Room master was successfully destroyed"
  end
end
