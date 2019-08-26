require 'test_helper'

class EmpathyMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empathy_map = empathy_maps(:one)
  end

  test "should get index" do
    get empathy_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_empathy_map_url
    assert_response :success
  end

  test "should create empathy_map" do
    assert_difference('EmpathyMap.count') do
      post empathy_maps_url, params: { empathy_map: { user_id: @empathy_map.user_id } }
    end

    assert_redirected_to empathy_map_url(EmpathyMap.last)
  end

  test "should show empathy_map" do
    get empathy_map_url(@empathy_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_empathy_map_url(@empathy_map)
    assert_response :success
  end

  test "should update empathy_map" do
    patch empathy_map_url(@empathy_map), params: { empathy_map: { user_id: @empathy_map.user_id } }
    assert_redirected_to empathy_map_url(@empathy_map)
  end

  test "should destroy empathy_map" do
    assert_difference('EmpathyMap.count', -1) do
      delete empathy_map_url(@empathy_map)
    end

    assert_redirected_to empathy_maps_url
  end
end
