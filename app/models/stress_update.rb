class StressUpdate
  include Mongoid::Document
  belongs_to :stressor
  #field :stressor_id, :type => Integer
  field :note, :type => String
  field :intensity, :type => Integer
end
