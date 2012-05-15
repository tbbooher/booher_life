class Goal
  include Mongoid::Document
  field :time_frame, :type => Symbol
  field :description, :type => String
  field :completion_date, :type => Date
  field :category, :type => Symbol
end
