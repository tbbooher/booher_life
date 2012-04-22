# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :next_step do
    task "MyText"
    due_date "2012-04-22"
    difficulty ""
  end
end
