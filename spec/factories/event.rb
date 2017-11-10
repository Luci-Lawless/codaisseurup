FactoryGirl.define do
  factory :event do
    name     { Faker::Lorem.words(3).join(' ') }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    user              { build(:user) }
    includes_food     true
    includes_drinks   true
  


    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
