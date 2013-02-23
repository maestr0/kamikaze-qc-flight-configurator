require 'test_helper'

class FlightConfigurationsControllerTest < ActionController::TestCase
  setup do
    @flight_configuration = flight_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flight_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flight_configuration" do
    assert_difference('FlightConfiguration.count') do
      post :create, flight_configuration: { control_status: @flight_configuration.control_status, correction_limit: @flight_configuration.correction_limit, correction_vector: @flight_configuration.correction_vector, motor3: @flight_configuration.motor3, motor4: @flight_configuration.motor4, motor_1: @flight_configuration.motor_1, motor_2: @flight_configuration.motor_2 }
    end

    assert_redirected_to flight_configuration_path(assigns(:flight_configuration))
  end

  test "should show flight_configuration" do
    get :show, id: @flight_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flight_configuration
    assert_response :success
  end

  test "should update flight_configuration" do
    put :update, id: @flight_configuration, flight_configuration: { control_status: @flight_configuration.control_status, correction_limit: @flight_configuration.correction_limit, correction_vector: @flight_configuration.correction_vector, motor3: @flight_configuration.motor3, motor4: @flight_configuration.motor4, motor_1: @flight_configuration.motor_1, motor_2: @flight_configuration.motor_2 }
    assert_redirected_to flight_configuration_path(assigns(:flight_configuration))
  end

  test "should destroy flight_configuration" do
    assert_difference('FlightConfiguration.count', -1) do
      delete :destroy, id: @flight_configuration
    end

    assert_redirected_to flight_configurations_path
  end
end
