# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :saving_goal do
    name "MyString"
    description "MyText"
    goal_date "2012-04-16"
    amount 1
  end
end
