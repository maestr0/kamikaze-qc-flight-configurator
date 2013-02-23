class ChangeFlightConfigurationColumnDatatype < ActiveRecord::Migration
  def self.up
    change_table :flight_configurations do |t|
      t.change :motor_1, :integer
      t.change :motor_2, :integer
      t.change :motor3, :integer
      t.change :motor4, :integer
    end
  end
end
