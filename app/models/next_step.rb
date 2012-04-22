class NextStep
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes

  field :task, :type => String
  field :due_date, :type => Date
  field :difficulty, :type => Symbol
  field :status, :type => Symbol # :done, STATUSES

  belongs_to :stressor

end
