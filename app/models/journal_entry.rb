class JournalEntry
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  include Mongoid::Timestamps

  field :entry_date, :type => Date
  field :description, :type => String
  field :purity, :type => Integer
  field :fitness, :type => Integer
  field :devotional, :type => Integer
  field :chrissy, :type => Integer
  field :relational, :type => Integer
  field :discipline, :type => Integer
  field :stress, :type => Integer
  field :sick, type: Boolean
  field :health_statement, :type => String
  field :to_do, type: String

end
