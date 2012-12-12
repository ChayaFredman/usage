require 'test_helper'

class RxByDaysControllerTest < ActionController::TestCase
  setup do
    @rx_by_day = rx_by_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rx_by_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rx_by_day" do
    assert_difference('RxByDay.count') do
      post :create, rx_by_day: {  }
    end

    assert_redirected_to rx_by_day_path(assigns(:rx_by_day))
  end

  test "should show rx_by_day" do
    get :show, id: @rx_by_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rx_by_day
    assert_response :success
  end

  test "should update rx_by_day" do
    put :update, id: @rx_by_day, rx_by_day: {  }
    assert_redirected_to rx_by_day_path(assigns(:rx_by_day))
  end

  test "should destroy rx_by_day" do
    assert_difference('RxByDay.count', -1) do
      delete :destroy, id: @rx_by_day
    end

    assert_redirected_to rx_by_days_path
  end
end
