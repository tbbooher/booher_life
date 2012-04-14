class Stressor
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :status, :type => String
end
