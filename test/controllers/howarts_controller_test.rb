require "test_helper"

class HowartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @howart = howarts(:one)
  end

  test "should get index" do
    get howarts_url
    assert_response :success
  end

  test "should get new" do
    get new_howart_url
    assert_response :success
  end

  test "should create howart" do
    assert_difference("Howart.count") do
      post howarts_url, params: { howart: { house: @howart.house, location: @howart.location, name: @howart.name } }
    end

    assert_redirected_to howart_url(Howart.last)
  end

  test "should show howart" do
    get howart_url(@howart)
    assert_response :success
  end

  test "should get edit" do
    get edit_howart_url(@howart)
    assert_response :success
  end

  test "should update howart" do
    patch howart_url(@howart), params: { howart: { house: @howart.house, location: @howart.location, name: @howart.name } }
    assert_redirected_to howart_url(@howart)
  end

  test "should destroy howart" do
    assert_difference("Howart.count", -1) do
      delete howart_url(@howart)
    end

    assert_redirected_to howarts_url
  end
end
