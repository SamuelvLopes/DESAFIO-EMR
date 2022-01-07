class CreateEmployeePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_positions do |t|
      t.integer :id_position
      t.integer :id_employee

      t.timestamps
    end
  end
end
