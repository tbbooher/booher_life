# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :journal_entry do
    entry_date "2012-04-14"
    description "MyText"
    purity 1
    fitness 1
    devotional 1
    chrissy 1
    relational 1
    discipline 1
    stress 1
  end
end
