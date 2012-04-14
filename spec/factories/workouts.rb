# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :workout do
    workout_date "2012-04-14"
    description "MyText"
    power 1
    crossfit_workout_id 1
  end
end
