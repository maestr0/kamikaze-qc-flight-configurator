require 'test_helper'

class ConfigurationsControllerTest < ActionController::TestCase
  setup do
    @configuration = configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configuration" do
    assert_difference('Configuration.count') do
      post :create, configuration: { control_status: @configuration.control_status, correction_vector: @configuration.correction_vector, motor3: @configuration.motor3, motor4: @configuration.motor4, motor_1: @configuration.motor_1, motor_2: @configuration.motor_2 }
    end

    assert_redirected_to configuration_path(assigns(:configuration))
  end

  test "should show configuration" do
    get :show, id: @configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configuration
    assert_response :success
  end

  test "should update configuration" do
    put :update, id: @configuration, configuration: { control_status: @configuration.control_status, correction_vector: @configuration.correction_vector, motor3: @configuration.motor3, motor4: @configuration.motor4, motor_1: @configuration.motor_1, motor_2: @configuration.motor_2 }
    assert_redirected_to configuration_path(assigns(:configuration))
  end

  test "should destroy configuration" do
    assert_difference('Configuration.count', -1) do
      delete :destroy, id: @configuration
    end

    assert_redirected_to configurations_path
  end
end
