# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :role do
    name { generate(:string) }
    title { generate(:string) }
    description { generate(:string) }
  end
end
