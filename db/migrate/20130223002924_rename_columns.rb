class RenameColumns < ActiveRecord::Migration
  def up
    change_table :flight_configurations do |t|
      t.rename :motor_1, :motor1
      t.rename :motor_2, :motor2
      end
  end

  def down
  end
end
