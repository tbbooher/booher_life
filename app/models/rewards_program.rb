class RewardsProgram
  include Mongoid::Document
  field :company, :type => String
  field :miles, :type => Integer
  field :expiration_date, :type => Date
  field :number, :type => Integer
  field :the_deal, type: String
  field :website, type: String
  field :username, type: String
  field :password, type: String

end
