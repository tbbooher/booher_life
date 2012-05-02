# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stress_update do
    stressor_id 1
    note "MyText"
    intensity 1
  end
end
