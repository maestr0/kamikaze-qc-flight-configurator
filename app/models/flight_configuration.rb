class FlightConfiguration < ActiveRecord::Base
  attr_accessible :control_status, :correction_limit, :correction_vector, :motor3, :motor4, :motor_1, :motor_2
end
