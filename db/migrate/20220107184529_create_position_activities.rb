class CreatePositionActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :position_activities do |t|
      t.integer :id_position
      t.integer :id_activy

      t.timestamps
    end
  end
end
