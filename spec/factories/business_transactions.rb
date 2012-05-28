# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :business_transaction do
    amount 1
    type ""
    account ""
    note "MyString"
  end
end
