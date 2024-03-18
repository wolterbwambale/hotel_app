require "application_system_test_case"

class CheckoutTimesTest < ApplicationSystemTestCase
  setup do
    @checkout_time = checkout_times(:one)
  end

  test "visiting the index" do
    visit checkout_times_url
    assert_selector "h1", text: "Checkout times"
  end

  test "should create checkout time" do
    visit checkout_times_url
    click_on "New checkout time"

    fill_in "Code", with: @checkout_time.code
    fill_in "Name", with: @checkout_time.name
    click_on "Create Checkout time"

    assert_text "Checkout time was successfully created"
    click_on "Back"
  end

  test "should update Checkout time" do
    visit checkout_time_url(@checkout_time)
    click_on "Edit this checkout time", match: :first

    fill_in "Code", with: @checkout_time.code
    fill_in "Name", with: @checkout_time.name
    click_on "Update Checkout time"

    assert_text "Checkout time was successfully updated"
    click_on "Back"
  end

  test "should destroy Checkout time" do
    visit checkout_time_url(@checkout_time)
    click_on "Destroy this checkout time", match: :first

    assert_text "Checkout time was successfully destroyed"
  end
end
