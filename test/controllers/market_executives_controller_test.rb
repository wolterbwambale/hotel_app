require "test_helper"

class MarketExecutivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @market_executive = market_executives(:one)
  end

  test "should get index" do
    get market_executives_url
    assert_response :success
  end

  test "should get new" do
    get new_market_executive_url
    assert_response :success
  end

  test "should create market_executive" do
    assert_difference("MarketExecutive.count") do
      post market_executives_url, params: { market_executive: { market_executive_code: @market_executive.market_executive_code, name: @market_executive.name } }
    end

    assert_redirected_to market_executive_url(MarketExecutive.last)
  end

  test "should show market_executive" do
    get market_executive_url(@market_executive)
    assert_response :success
  end

  test "should get edit" do
    get edit_market_executive_url(@market_executive)
    assert_response :success
  end

  test "should update market_executive" do
    patch market_executive_url(@market_executive), params: { market_executive: { market_executive_code: @market_executive.market_executive_code, name: @market_executive.name } }
    assert_redirected_to market_executive_url(@market_executive)
  end

  test "should destroy market_executive" do
    assert_difference("MarketExecutive.count", -1) do
      delete market_executive_url(@market_executive)
    end

    assert_redirected_to market_executives_url
  end
end
