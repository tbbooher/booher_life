class SavingGoal
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :goal_date, :type => Date
  field :amount, :type => Integer
end
