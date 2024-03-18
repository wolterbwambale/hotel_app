require "application_system_test_case"

class BillingInstructionsTest < ApplicationSystemTestCase
  setup do
    @billing_instruction = billing_instructions(:one)
  end

  test "visiting the index" do
    visit billing_instructions_url
    assert_selector "h1", text: "Billing instructions"
  end

  test "should create billing instruction" do
    visit billing_instructions_url
    click_on "New billing instruction"

    fill_in "Description", with: @billing_instruction.description
    click_on "Create Billing instruction"

    assert_text "Billing instruction was successfully created"
    click_on "Back"
  end

  test "should update Billing instruction" do
    visit billing_instruction_url(@billing_instruction)
    click_on "Edit this billing instruction", match: :first

    fill_in "Description", with: @billing_instruction.description
    click_on "Update Billing instruction"

    assert_text "Billing instruction was successfully updated"
    click_on "Back"
  end

  test "should destroy Billing instruction" do
    visit billing_instruction_url(@billing_instruction)
    click_on "Destroy this billing instruction", match: :first

    assert_text "Billing instruction was successfully destroyed"
  end
end
