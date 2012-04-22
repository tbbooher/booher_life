class Workout
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes 

  field :workout_date, :type => Date
  field :description, :type => String
  field :power, :type => Float
  field :crossfit_workout_id, :type => Integer
  field :mileage, type: Float

end
