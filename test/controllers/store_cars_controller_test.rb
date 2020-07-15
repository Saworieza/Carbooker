require 'test_helper'

class StoreCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_car = store_cars(:one)
  end

  test "should get index" do
    get store_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_store_car_url
    assert_response :success
  end

  test "should create store_car" do
    assert_difference('StoreCar.count') do
      post store_cars_url, params: { store_car: { car_id: @store_car.car_id, store_id: @store_car.store_id } }
    end

    assert_redirected_to store_car_url(StoreCar.last)
  end

  test "should show store_car" do
    get store_car_url(@store_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_car_url(@store_car)
    assert_response :success
  end

  test "should update store_car" do
    patch store_car_url(@store_car), params: { store_car: { car_id: @store_car.car_id, store_id: @store_car.store_id } }
    assert_redirected_to store_car_url(@store_car)
  end

  test "should destroy store_car" do
    assert_difference('StoreCar.count', -1) do
      delete store_car_url(@store_car)
    end

    assert_redirected_to store_cars_url
  end
end
