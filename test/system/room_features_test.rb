require "application_system_test_case"

class RoomFeaturesTest < ApplicationSystemTestCase
  setup do
    @room_feature = room_features(:one)
  end

  test "visiting the index" do
    visit room_features_url
    assert_selector "h1", text: "Room features"
  end

  test "should create room feature" do
    visit room_features_url
    click_on "New room feature"

    fill_in "Code", with: @room_feature.code
    fill_in "Name", with: @room_feature.name
    fill_in "Room master", with: @room_feature.room_master_id
    click_on "Create Room feature"

    assert_text "Room feature was successfully created"
    click_on "Back"
  end

  test "should update Room feature" do
    visit room_feature_url(@room_feature)
    click_on "Edit this room feature", match: :first

    fill_in "Code", with: @room_feature.code
    fill_in "Name", with: @room_feature.name
    fill_in "Room master", with: @room_feature.room_master_id
    click_on "Update Room feature"

    assert_text "Room feature was successfully updated"
    click_on "Back"
  end

  test "should destroy Room feature" do
    visit room_feature_url(@room_feature)
    click_on "Destroy this room feature", match: :first

    assert_text "Room feature was successfully destroyed"
  end
end
