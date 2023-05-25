require "application_system_test_case"

class HowartsTest < ApplicationSystemTestCase
  setup do
    @howart = howarts(:one)
  end

  test "visiting the index" do
    visit howarts_url
    assert_selector "h1", text: "Howarts"
  end

  test "should create howart" do
    visit howarts_url
    click_on "New howart"

    fill_in "House", with: @howart.house
    fill_in "Location", with: @howart.location
    fill_in "Name", with: @howart.name
    click_on "Create Howart"

    assert_text "Howart was successfully created"
    click_on "Back"
  end

  test "should update Howart" do
    visit howart_url(@howart)
    click_on "Edit this howart", match: :first

    fill_in "House", with: @howart.house
    fill_in "Location", with: @howart.location
    fill_in "Name", with: @howart.name
    click_on "Update Howart"

    assert_text "Howart was successfully updated"
    click_on "Back"
  end

  test "should destroy Howart" do
    visit howart_url(@howart)
    click_on "Destroy this howart", match: :first

    assert_text "Howart was successfully destroyed"
  end
end
