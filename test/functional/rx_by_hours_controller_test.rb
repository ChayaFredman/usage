require 'test_helper'

class RxByHoursControllerTest < ActionController::TestCase
  setup do
    @rx_by_hour = rx_by_hours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rx_by_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rx_by_hour" do
    assert_difference('RxByHour.count') do
      post :create, rx_by_hour: {  }
    end

    assert_redirected_to rx_by_hour_path(assigns(:rx_by_hour))
  end

  test "should show rx_by_hour" do
    get :show, id: @rx_by_hour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rx_by_hour
    assert_response :success
  end

  test "should update rx_by_hour" do
    put :update, id: @rx_by_hour, rx_by_hour: {  }
    assert_redirected_to rx_by_hour_path(assigns(:rx_by_hour))
  end

  test "should destroy rx_by_hour" do
    assert_difference('RxByHour.count', -1) do
      delete :destroy, id: @rx_by_hour
    end

    assert_redirected_to rx_by_hours_path
  end
end
