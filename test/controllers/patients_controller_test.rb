require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { address: @patient.address, alcoholism: @patient.alcoholism, allergies: @patient.allergies, birth_date: @patient.birth_date, blood_type: @patient.blood_type, cell: @patient.cell, city: @patient.city, cp: @patient.cp, email: @patient.email, first_name: @patient.first_name, gender: @patient.gender, hereditary_background: @patient.hereditary_background, last_name: @patient.last_name, non_pathological: @patient.non_pathological, pathological: @patient.pathological, phone: @patient.phone, smoking: @patient.smoking, state: @patient.state, surgeries: @patient.surgeries }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { address: @patient.address, alcoholism: @patient.alcoholism, allergies: @patient.allergies, birth_date: @patient.birth_date, blood_type: @patient.blood_type, cell: @patient.cell, city: @patient.city, cp: @patient.cp, email: @patient.email, first_name: @patient.first_name, gender: @patient.gender, hereditary_background: @patient.hereditary_background, last_name: @patient.last_name, non_pathological: @patient.non_pathological, pathological: @patient.pathological, phone: @patient.phone, smoking: @patient.smoking, state: @patient.state, surgeries: @patient.surgeries }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
