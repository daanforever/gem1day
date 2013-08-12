# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email
    password
    password_confirmation { |u| u.password }
  end
end
