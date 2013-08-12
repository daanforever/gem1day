FactoryGirl.define do
  sequence(:email)    { |n| "person#{n}@example.com" }
  sequence(:password) { (rand(8..16)).times.map{('A'..'z').to_a[rand(58)]}.join }
end