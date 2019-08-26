require 'test_helper'

class EmpathyMapRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empathy_map_record = empathy_map_records(:one)
  end

  test "should get index" do
    get empathy_map_records_url
    assert_response :success
  end

  test "should get new" do
    get new_empathy_map_record_url
    assert_response :success
  end

  test "should create empathy_map_record" do
    assert_difference('EmpathyMapRecord.count') do
      post empathy_map_records_url, params: { empathy_map_record: { empathy_map_id: @empathy_map_record.empathy_map_id, group: @empathy_map_record.group, position: @empathy_map_record.position, text: @empathy_map_record.text, type: @empathy_map_record.type } }
    end

    assert_redirected_to empathy_map_record_url(EmpathyMapRecord.last)
  end

  test "should show empathy_map_record" do
    get empathy_map_record_url(@empathy_map_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_empathy_map_record_url(@empathy_map_record)
    assert_response :success
  end

  test "should update empathy_map_record" do
    patch empathy_map_record_url(@empathy_map_record), params: { empathy_map_record: { empathy_map_id: @empathy_map_record.empathy_map_id, group: @empathy_map_record.group, position: @empathy_map_record.position, text: @empathy_map_record.text, type: @empathy_map_record.type } }
    assert_redirected_to empathy_map_record_url(@empathy_map_record)
  end

  test "should destroy empathy_map_record" do
    assert_difference('EmpathyMapRecord.count', -1) do
      delete empathy_map_record_url(@empathy_map_record)
    end

    assert_redirected_to empathy_map_records_url
  end
end
