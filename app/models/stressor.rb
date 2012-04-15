class Stressor
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :status, :type => String # should be of several categories
  field :mitigation_plan, type: String
  # should have intensity over time

  # i think a major point here is wether i can do anything about it
  # a stress should have many tasks with a due date
  # things that make me feel bad:
  # things that are undone
  # things i can change
  # etc

end
