class Workout
  include Mongoid::Document
  field :workout_date, :type => Date
  field :description, :type => String
  field :power, :type => Integer
  field :crossfit_workout_id, :type => Integer
end
