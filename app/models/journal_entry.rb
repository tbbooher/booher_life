class JournalEntry
  include Mongoid::Document
  field :entry_date, :type => Date
  field :description, :type => String
  field :purity, :type => Integer
  field :fitness, :type => Integer
  field :devotional, :type => Integer
  field :chrissy, :type => Integer
  field :relational, :type => Integer
  field :discipline, :type => Integer
  field :stress, :type => Integer
end
