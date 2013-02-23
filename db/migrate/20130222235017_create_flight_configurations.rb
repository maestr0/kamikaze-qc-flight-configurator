class CreateFlightConfigurations < ActiveRecord::Migration
  def change
    create_table :flight_configurations do |t|
      t.text :motor_1
      t.text :motor_2
      t.text :motor3
      t.text :motor4
      t.integer :control_status
      t.integer :correction_vector
      t.integer :correction_limit

      t.timestamps
    end
  end
end
