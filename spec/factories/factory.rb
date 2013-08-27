
def symbol() (('A'..'Z').to_a + ('a' .. 'z').to_a + (1..9).to_a + [' '])[rand(62)]; end

FactoryGirl.define do
  sequence(:email)    { |n| "person#{n}@example.com" }
  sequence(:password) { (rand(8..16)).times.map{symbol}.join }
  sequence(:string)   { (rand(4..64)).times.map{symbol}.join }
end