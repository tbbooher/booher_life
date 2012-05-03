# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rewards_program do
    company "MyString"
    miles 1
    expiration_date "2012-05-03"
    number 1
  end
end
