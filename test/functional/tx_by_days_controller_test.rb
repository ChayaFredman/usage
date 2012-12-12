require 'test_helper'

class TxByDaysControllerTest < ActionController::TestCase
  setup do
    @tx_by_day = tx_by_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tx_by_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tx_by_day" do
    assert_difference('TxByDay.count') do
      post :create, tx_by_day: {  }
    end

    assert_redirected_to tx_by_day_path(assigns(:tx_by_day))
  end

  test "should show tx_by_day" do
    get :show, id: @tx_by_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tx_by_day
    assert_response :success
  end

  test "should update tx_by_day" do
    put :update, id: @tx_by_day, tx_by_day: {  }
    assert_redirected_to tx_by_day_path(assigns(:tx_by_day))
  end

  test "should destroy tx_by_day" do
    assert_difference('TxByDay.count', -1) do
      delete :destroy, id: @tx_by_day
    end

    assert_redirected_to tx_by_days_path
  end
end
