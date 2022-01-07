require "application_system_test_case"

class PositionActivitiesTest < ApplicationSystemTestCase
  setup do
    @position_activity = position_activities(:one)
  end

  test "visiting the index" do
    visit position_activities_url
    assert_selector "h1", text: "Position activities"
  end

  test "should create position activitie" do
    visit position_activities_url
    click_on "New position activitie"

    fill_in "Id activy", with: @position_activity.id_activy
    fill_in "Id position", with: @position_activity.id_position
    click_on "Create Position activitie"

    assert_text "Position activitie was successfully created"
    click_on "Back"
  end

  test "should update Position activitie" do
    visit position_activity_url(@position_activity)
    click_on "Edit this position activitie", match: :first

    fill_in "Id activy", with: @position_activity.id_activy
    fill_in "Id position", with: @position_activity.id_position
    click_on "Update Position activitie"

    assert_text "Position activitie was successfully updated"
    click_on "Back"
  end

  test "should destroy Position activitie" do
    visit position_activity_url(@position_activity)
    click_on "Destroy this position activitie", match: :first

    assert_text "Position activitie was successfully destroyed"
  end
end
