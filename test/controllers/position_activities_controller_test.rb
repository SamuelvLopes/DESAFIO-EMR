require "test_helper"

class PositionActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position_activity = position_activities(:one)
  end

  test "should get index" do
    get position_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_position_activity_url
    assert_response :success
  end

  test "should create position_activity" do
    assert_difference("PositionActivitie.count") do
      post position_activities_url, params: { position_activity: { id_activy: @position_activity.id_activy, id_position: @position_activity.id_position } }
    end

    assert_redirected_to position_activity_url(PositionActivitie.last)
  end

  test "should show position_activity" do
    get position_activity_url(@position_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_activity_url(@position_activity)
    assert_response :success
  end

  test "should update position_activity" do
    patch position_activity_url(@position_activity), params: { position_activity: { id_activy: @position_activity.id_activy, id_position: @position_activity.id_position } }
    assert_redirected_to position_activity_url(@position_activity)
  end

  test "should destroy position_activity" do
    assert_difference("PositionActivitie.count", -1) do
      delete position_activity_url(@position_activity)
    end

    assert_redirected_to position_activities_url
  end
end
