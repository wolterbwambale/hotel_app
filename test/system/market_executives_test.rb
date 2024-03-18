require "application_system_test_case"

class MarketExecutivesTest < ApplicationSystemTestCase
  setup do
    @market_executive = market_executives(:one)
  end

  test "visiting the index" do
    visit market_executives_url
    assert_selector "h1", text: "Market executives"
  end

  test "should create market executive" do
    visit market_executives_url
    click_on "New market executive"

    fill_in "Market executive code", with: @market_executive.market_executive_code
    fill_in "Name", with: @market_executive.name
    click_on "Create Market executive"

    assert_text "Market executive was successfully created"
    click_on "Back"
  end

  test "should update Market executive" do
    visit market_executive_url(@market_executive)
    click_on "Edit this market executive", match: :first

    fill_in "Market executive code", with: @market_executive.market_executive_code
    fill_in "Name", with: @market_executive.name
    click_on "Update Market executive"

    assert_text "Market executive was successfully updated"
    click_on "Back"
  end

  test "should destroy Market executive" do
    visit market_executive_url(@market_executive)
    click_on "Destroy this market executive", match: :first

    assert_text "Market executive was successfully destroyed"
  end
end
