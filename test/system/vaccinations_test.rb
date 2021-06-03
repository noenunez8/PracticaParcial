require "application_system_test_case"

class VaccinationsTest < ApplicationSystemTestCase
  setup do
    @vaccination = vaccinations(:one)
  end

  test "visiting the index" do
    visit vaccinations_url
    assert_selector "h1", text: "Vaccinations"
  end

  test "creating a Vaccination" do
    visit vaccinations_url
    click_on "New Vaccination"

    fill_in "Date", with: @vaccination.date
    fill_in "Dose number", with: @vaccination.dose_number
    fill_in "Kid", with: @vaccination.kid_id
    fill_in "Name", with: @vaccination.name
    fill_in "Nurse", with: @vaccination.nurse_id
    fill_in "Vaccine", with: @vaccination.vaccine_id
    click_on "Create Vaccination"

    assert_text "Vaccination was successfully created"
    click_on "Back"
  end

  test "updating a Vaccination" do
    visit vaccinations_url
    click_on "Edit", match: :first

    fill_in "Date", with: @vaccination.date
    fill_in "Dose number", with: @vaccination.dose_number
    fill_in "Kid", with: @vaccination.kid_id
    fill_in "Name", with: @vaccination.name
    fill_in "Nurse", with: @vaccination.nurse_id
    fill_in "Vaccine", with: @vaccination.vaccine_id
    click_on "Update Vaccination"

    assert_text "Vaccination was successfully updated"
    click_on "Back"
  end

  test "destroying a Vaccination" do
    visit vaccinations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vaccination was successfully destroyed"
  end
end
