require "application_system_test_case"

class RoomtypesTest < ApplicationSystemTestCase
  setup do
    @roomtype = roomtypes(:one)
  end

  test "visiting the index" do
    visit roomtypes_url
    assert_selector "h1", text: "Roomtypes"
  end

  test "should create roomtype" do
    visit roomtypes_url
    click_on "New roomtype"

    fill_in "Cancel charges", with: @roomtype.cancel_charges
    fill_in "Code", with: @roomtype.code
    fill_in "Max guest", with: @roomtype.max_guest
    fill_in "Minium advance", with: @roomtype.minium_advance
    fill_in "Name", with: @roomtype.name
    click_on "Create Roomtype"

    assert_text "Roomtype was successfully created"
    click_on "Back"
  end

  test "should update Roomtype" do
    visit roomtype_url(@roomtype)
    click_on "Edit this roomtype", match: :first

    fill_in "Cancel charges", with: @roomtype.cancel_charges
    fill_in "Code", with: @roomtype.code
    fill_in "Max guest", with: @roomtype.max_guest
    fill_in "Minium advance", with: @roomtype.minium_advance
    fill_in "Name", with: @roomtype.name
    click_on "Update Roomtype"

    assert_text "Roomtype was successfully updated"
    click_on "Back"
  end

  test "should destroy Roomtype" do
    visit roomtype_url(@roomtype)
    click_on "Destroy this roomtype", match: :first

    assert_text "Roomtype was successfully destroyed"
  end
end
