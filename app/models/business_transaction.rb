class BusinessTransaction
  include Mongoid::Document
  field :amount, :type => Integer
  field :type, :type => Symbol
  field :account, :type => Symbol
  field :note, :type => String

end
