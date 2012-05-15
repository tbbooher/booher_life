# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal do
    time_frame ""
    description "MyString"
    completion_date "2012-05-14"
    category ""
  end
end
