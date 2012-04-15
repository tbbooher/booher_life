class Stressor
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :status, :type => String # should be of several categories
  field :mitigation_plan, type: String
  # should have intensity over time

end
