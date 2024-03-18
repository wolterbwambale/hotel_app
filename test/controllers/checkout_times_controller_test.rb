require "test_helper"

class CheckoutTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checkout_time = checkout_times(:one)
  end

  test "should get index" do
    get checkout_times_url
    assert_response :success
  end

  test "should get new" do
    get new_checkout_time_url
    assert_response :success
  end

  test "should create checkout_time" do
    assert_difference("CheckoutTime.count") do
      post checkout_times_url, params: { checkout_time: { code: @checkout_time.code, name: @checkout_time.name } }
    end

    assert_redirected_to checkout_time_url(CheckoutTime.last)
  end

  test "should show checkout_time" do
    get checkout_time_url(@checkout_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_checkout_time_url(@checkout_time)
    assert_response :success
  end

  test "should update checkout_time" do
    patch checkout_time_url(@checkout_time), params: { checkout_time: { code: @checkout_time.code, name: @checkout_time.name } }
    assert_redirected_to checkout_time_url(@checkout_time)
  end

  test "should destroy checkout_time" do
    assert_difference("CheckoutTime.count", -1) do
      delete checkout_time_url(@checkout_time)
    end

    assert_redirected_to checkout_times_url
  end
end
