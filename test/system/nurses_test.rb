require "application_system_test_case"

class NursesTest < ApplicationSystemTestCase
  setup do
    @nurse = nurses(:one)
  end

  test "visiting the index" do
    visit nurses_url
    assert_selector "h1", text: "Nurses"
  end

  test "creating a Nurse" do
    visit nurses_url
    click_on "New Nurse"

    fill_in "First name", with: @nurse.first_name
    fill_in "Last name", with: @nurse.last_name
    fill_in "Username", with: @nurse.username
    click_on "Create Nurse"

    assert_text "Nurse was successfully created"
    click_on "Back"
  end

  test "updating a Nurse" do
    visit nurses_url
    click_on "Edit", match: :first

    fill_in "First name", with: @nurse.first_name
    fill_in "Last name", with: @nurse.last_name
    fill_in "Username", with: @nurse.username
    click_on "Update Nurse"

    assert_text "Nurse was successfully updated"
    click_on "Back"
  end

  test "destroying a Nurse" do
    visit nurses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nurse was successfully destroyed"
  end
end
