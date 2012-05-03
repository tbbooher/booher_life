class RewardsProgram
  include Mongoid::Document
  field :company, :type => String
  field :miles, :type => Integer
  field :expiration_date, :type => Date
  field :number, :type => Integer
end
