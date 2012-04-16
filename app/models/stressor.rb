class Stressor
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :status, :type => Symbol # should be of several categories
  field :mitigation_plan, type: String
  field :long_term_vision, type: Text
  field :urgency, type: Symbol
  field :impact, type: Symbol
  field :difficulty, type: Symbol
  # should have intensity over time

  # i think a major point here is wether i can do anything about it
  # a stress should have many tasks with a due date
  # things that make me feel bad:
  # things that are undone
  # things i can change
  # etc

end
