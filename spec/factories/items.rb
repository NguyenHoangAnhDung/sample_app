FactoryBot.define do
  factory :item do
    name { Faker::Beer.name }
    price { Faker::Number.number(2) }
  end
end
