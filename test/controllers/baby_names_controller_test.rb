require 'test_helper'

class BabyNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baby_name = baby_names(:one)
  end

  test "should get index" do
    get baby_names_url
    assert_response :success
  end

  test "should get new" do
    get new_baby_name_url
    assert_response :success
  end

  test "should create baby_name" do
    assert_difference('BabyName.count') do
      post baby_names_url, params: { baby_name: { boy: @baby_name.boy, girl: @baby_name.girl, name: @baby_name.name } }
    end

    assert_redirected_to baby_name_url(BabyName.last)
  end

  test "should show baby_name" do
    get baby_name_url(@baby_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_baby_name_url(@baby_name)
    assert_response :success
  end

  test "should update baby_name" do
    patch baby_name_url(@baby_name), params: { baby_name: { boy: @baby_name.boy, girl: @baby_name.girl, name: @baby_name.name } }
    assert_redirected_to baby_name_url(@baby_name)
  end

  test "should destroy baby_name" do
    assert_difference('BabyName.count', -1) do
      delete baby_name_url(@baby_name)
    end

    assert_redirected_to baby_names_url
  end
end
