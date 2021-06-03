require "test_helper"

class VaccinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vaccination = vaccinations(:one)
  end

  test "should get index" do
    get vaccinations_url
    assert_response :success
  end

  test "should get new" do
    get new_vaccination_url
    assert_response :success
  end

  test "should create vaccination" do
    assert_difference('Vaccination.count') do
      post vaccinations_url, params: { vaccination: { date: @vaccination.date, dose_number: @vaccination.dose_number, kid_id: @vaccination.kid_id, name: @vaccination.name, nurse_id: @vaccination.nurse_id, vaccine_id: @vaccination.vaccine_id } }
    end

    assert_redirected_to vaccination_url(Vaccination.last)
  end

  test "should show vaccination" do
    get vaccination_url(@vaccination)
    assert_response :success
  end

  test "should get edit" do
    get edit_vaccination_url(@vaccination)
    assert_response :success
  end

  test "should update vaccination" do
    patch vaccination_url(@vaccination), params: { vaccination: { date: @vaccination.date, dose_number: @vaccination.dose_number, kid_id: @vaccination.kid_id, name: @vaccination.name, nurse_id: @vaccination.nurse_id, vaccine_id: @vaccination.vaccine_id } }
    assert_redirected_to vaccination_url(@vaccination)
  end

  test "should destroy vaccination" do
    assert_difference('Vaccination.count', -1) do
      delete vaccination_url(@vaccination)
    end

    assert_redirected_to vaccinations_url
  end
end
