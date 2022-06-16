require "application_system_test_case"

class ChlosTest < ApplicationSystemTestCase
  setup do
    @chlo = chlos(:one)
  end

  test "visiting the index" do
    visit chlos_url
    assert_selector "h1", text: "Chlos"
  end

  test "should create chlo" do
    visit chlos_url
    click_on "New chlo"

    click_on "Create Chlo"

    assert_text "Chlo was successfully created"
    click_on "Back"
  end

  test "should update Chlo" do
    visit chlo_url(@chlo)
    click_on "Edit this chlo", match: :first

    click_on "Update Chlo"

    assert_text "Chlo was successfully updated"
    click_on "Back"
  end

  test "should destroy Chlo" do
    visit chlo_url(@chlo)
    click_on "Destroy this chlo", match: :first

    assert_text "Chlo was successfully destroyed"
  end
end
