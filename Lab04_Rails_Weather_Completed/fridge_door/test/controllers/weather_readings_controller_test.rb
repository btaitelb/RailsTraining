require 'test_helper'

class WeatherReadingsControllerTest < ActionController::TestCase
  setup do
    @weather_reading = weather_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weather_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather_reading" do
    assert_difference('WeatherReading.count') do
      post :create, weather_reading: { description: @weather_reading.description, icon_url: @weather_reading.icon_url, location: @weather_reading.location, temperature: @weather_reading.temperature }
    end

    assert_redirected_to weather_reading_path(assigns(:weather_reading))
  end

  test "should show weather_reading" do
    get :show, id: @weather_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather_reading
    assert_response :success
  end

  test "should update weather_reading" do
    patch :update, id: @weather_reading, weather_reading: { description: @weather_reading.description, icon_url: @weather_reading.icon_url, location: @weather_reading.location, temperature: @weather_reading.temperature }
    assert_redirected_to weather_reading_path(assigns(:weather_reading))
  end

  test "should destroy weather_reading" do
    assert_difference('WeatherReading.count', -1) do
      delete :destroy, id: @weather_reading
    end

    assert_redirected_to weather_readings_path
  end
end
