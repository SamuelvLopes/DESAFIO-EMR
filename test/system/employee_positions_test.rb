require "application_system_test_case"

class EmployeePositionsTest < ApplicationSystemTestCase
  setup do
    @employee_position = employee_positions(:one)
  end

  test "visiting the index" do
    visit employee_positions_url
    assert_selector "h1", text: "Employee positions"
  end

  test "should create employee position" do
    visit employee_positions_url
    click_on "New employee position"

    fill_in "Id employee", with: @employee_position.id_employee
    fill_in "Id position", with: @employee_position.id_position
    click_on "Create Employee position"

    assert_text "Employee position was successfully created"
    click_on "Back"
  end

  test "should update Employee position" do
    visit employee_position_url(@employee_position)
    click_on "Edit this employee position", match: :first

    fill_in "Id employee", with: @employee_position.id_employee
    fill_in "Id position", with: @employee_position.id_position
    click_on "Update Employee position"

    assert_text "Employee position was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee position" do
    visit employee_position_url(@employee_position)
    click_on "Destroy this employee position", match: :first

    assert_text "Employee position was successfully destroyed"
  end
end
