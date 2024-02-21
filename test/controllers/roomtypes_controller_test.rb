require "test_helper"

class RoomtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomtype = roomtypes(:one)
  end

  test "should get index" do
    get roomtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_roomtype_url
    assert_response :success
  end

  test "should create roomtype" do
    assert_difference("Roomtype.count") do
      post roomtypes_url, params: { roomtype: { cancel_charges: @roomtype.cancel_charges, code: @roomtype.code, max_guest: @roomtype.max_guest, minium_advance: @roomtype.minium_advance, name: @roomtype.name } }
    end

    assert_redirected_to roomtype_url(Roomtype.last)
  end

  test "should show roomtype" do
    get roomtype_url(@roomtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_roomtype_url(@roomtype)
    assert_response :success
  end

  test "should update roomtype" do
    patch roomtype_url(@roomtype), params: { roomtype: { cancel_charges: @roomtype.cancel_charges, code: @roomtype.code, max_guest: @roomtype.max_guest, minium_advance: @roomtype.minium_advance, name: @roomtype.name } }
    assert_redirected_to roomtype_url(@roomtype)
  end

  test "should destroy roomtype" do
    assert_difference("Roomtype.count", -1) do
      delete roomtype_url(@roomtype)
    end

    assert_redirected_to roomtypes_url
  end
end
