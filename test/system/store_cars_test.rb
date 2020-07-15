require "application_system_test_case"

class StoreCarsTest < ApplicationSystemTestCase
  setup do
    @store_car = store_cars(:one)
  end

  test "visiting the index" do
    visit store_cars_url
    assert_selector "h1", text: "Store Cars"
  end

  test "creating a Store car" do
    visit store_cars_url
    click_on "New Store Car"

    fill_in "Car", with: @store_car.car_id
    fill_in "Store", with: @store_car.store_id
    click_on "Create Store car"

    assert_text "Store car was successfully created"
    click_on "Back"
  end

  test "updating a Store car" do
    visit store_cars_url
    click_on "Edit", match: :first

    fill_in "Car", with: @store_car.car_id
    fill_in "Store", with: @store_car.store_id
    click_on "Update Store car"

    assert_text "Store car was successfully updated"
    click_on "Back"
  end

  test "destroying a Store car" do
    visit store_cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store car was successfully destroyed"
  end
end
