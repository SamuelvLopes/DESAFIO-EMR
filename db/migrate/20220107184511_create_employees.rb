class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :description
      t.datetime :birth
      t.integer :id_position

      t.timestamps
    end
  end
end
