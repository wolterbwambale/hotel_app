require "test_helper"

class BillingInstructionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billing_instruction = billing_instructions(:one)
  end

  test "should get index" do
    get billing_instructions_url
    assert_response :success
  end

  test "should get new" do
    get new_billing_instruction_url
    assert_response :success
  end

  test "should create billing_instruction" do
    assert_difference("BillingInstruction.count") do
      post billing_instructions_url, params: { billing_instruction: { description: @billing_instruction.description } }
    end

    assert_redirected_to billing_instruction_url(BillingInstruction.last)
  end

  test "should show billing_instruction" do
    get billing_instruction_url(@billing_instruction)
    assert_response :success
  end

  test "should get edit" do
    get edit_billing_instruction_url(@billing_instruction)
    assert_response :success
  end

  test "should update billing_instruction" do
    patch billing_instruction_url(@billing_instruction), params: { billing_instruction: { description: @billing_instruction.description } }
    assert_redirected_to billing_instruction_url(@billing_instruction)
  end

  test "should destroy billing_instruction" do
    assert_difference("BillingInstruction.count", -1) do
      delete billing_instruction_url(@billing_instruction)
    end

    assert_redirected_to billing_instructions_url
  end
end
