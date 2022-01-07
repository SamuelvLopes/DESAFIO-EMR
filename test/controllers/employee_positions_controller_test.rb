require "test_helper"

class EmployeePositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_position = employee_positions(:one)
  end

  test "should get index" do
    get employee_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_position_url
    assert_response :success
  end

  test "should create employee_position" do
    assert_difference("EmployeePosition.count") do
      post employee_positions_url, params: { employee_position: { id_employee: @employee_position.id_employee, id_position: @employee_position.id_position } }
    end

    assert_redirected_to employee_position_url(EmployeePosition.last)
  end

  test "should show employee_position" do
    get employee_position_url(@employee_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_position_url(@employee_position)
    assert_response :success
  end

  test "should update employee_position" do
    patch employee_position_url(@employee_position), params: { employee_position: { id_employee: @employee_position.id_employee, id_position: @employee_position.id_position } }
    assert_redirected_to employee_position_url(@employee_position)
  end

  test "should destroy employee_position" do
    assert_difference("EmployeePosition.count", -1) do
      delete employee_position_url(@employee_position)
    end

    assert_redirected_to employee_positions_url
  end
end
