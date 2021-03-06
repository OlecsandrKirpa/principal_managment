require "test_helper"

class HoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hour = hours(:one)
  end

  test "should get index" do
    get hours_url
    assert_response :success
  end

  test "should get new" do
    get new_hour_url
    assert_response :success
  end

  test "should create hour" do
    assert_difference('Hour.count') do
      post hours_url, params: { hour: { begin: @hour.begin, date: @hour.date, end: @hour.end, room_id: @hour.room_id, schedule_id: @hour.schedule_id, school_class_id: @hour.school_class_id, teacher_id: @hour.teacher_id } }
    end

    assert_redirected_to hour_url(Hour.last)
  end

  test "should show hour" do
    get hour_url(@hour)
    assert_response :success
  end

  test "should get edit" do
    get edit_hour_url(@hour)
    assert_response :success
  end

  test "should update hour" do
    patch hour_url(@hour), params: { hour: { begin: @hour.begin, date: @hour.date, end: @hour.end, room_id: @hour.room_id, schedule_id: @hour.schedule_id, school_class_id: @hour.school_class_id, teacher_id: @hour.teacher_id } }
    assert_redirected_to hour_url(@hour)
  end

  test "should destroy hour" do
    assert_difference('Hour.count', -1) do
      delete hour_url(@hour)
    end

    assert_redirected_to hours_url
  end
end
