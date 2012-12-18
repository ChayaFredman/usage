require 'test_helper'

class TxByHoursControllerTest < ActionController::TestCase
  setup do
    @tx_by_hour = tx_by_hours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tx_by_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tx_by_hour" do
    assert_difference('TxByHour.count') do
      post :create, tx_by_hour: {  }
    end

    assert_redirected_to tx_by_hour_path(assigns(:tx_by_hour))
  end

  test "should show tx_by_hour" do
    get :show, id: @tx_by_hour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tx_by_hour
    assert_response :success
  end

  test "should update tx_by_hour" do
    put :update, id: @tx_by_hour, tx_by_hour: {  }
    assert_redirected_to tx_by_hour_path(assigns(:tx_by_hour))
  end

  test "should destroy tx_by_hour" do
    assert_difference('TxByHour.count', -1) do
      delete :destroy, id: @tx_by_hour
    end

    assert_redirected_to tx_by_hours_path
  end
end
