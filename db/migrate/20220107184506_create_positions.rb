class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.string :description
      t.float :salary

      t.timestamps
    end
  end
end
