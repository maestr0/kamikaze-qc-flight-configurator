class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.text :motor_1
      t.text :motor_2
      t.text :motor3
      t.text :motor4
      t.integer :control_status
      t.integer :correction_vector

      t.timestamps
    end
  end
end
