require "application_system_test_case"

class HoursTest < ApplicationSystemTestCase
  setup do
    @hour = hours(:one)
  end

  test "visiting the index" do
    visit hours_url
    assert_selector "h1", text: "Hours"
  end

  test "creating a Hour" do
    visit hours_url
    click_on "New Hour"

    fill_in "Begin", with: @hour.begin
    fill_in "Date", with: @hour.date
    fill_in "End", with: @hour.end
    fill_in "Room", with: @hour.room_id
    fill_in "Schedule", with: @hour.schedule_id
    fill_in "School class", with: @hour.school_class_id
    fill_in "Teacher", with: @hour.teacher_id
    click_on "Create Hour"

    assert_text "Hour was successfully created"
    click_on "Back"
  end

  test "updating a Hour" do
    visit hours_url
    click_on "Edit", match: :first

    fill_in "Begin", with: @hour.begin
    fill_in "Date", with: @hour.date
    fill_in "End", with: @hour.end
    fill_in "Room", with: @hour.room_id
    fill_in "Schedule", with: @hour.schedule_id
    fill_in "School class", with: @hour.school_class_id
    fill_in "Teacher", with: @hour.teacher_id
    click_on "Update Hour"

    assert_text "Hour was successfully updated"
    click_on "Back"
  end

  test "destroying a Hour" do
    visit hours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hour was successfully destroyed"
  end
end
