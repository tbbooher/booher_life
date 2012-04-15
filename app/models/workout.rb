class Workout
  include Mongoid::Document
  field :workout_date, :type => Date
  field :description, :type => String
  field :power, :type => Decimal
  field :crossfit_workout_id, :type => Integer
  field :mileage, type: Decimal
end
