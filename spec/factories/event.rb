FactoryGirl.define do
  factory :event do
    name     { Faker::Lorem.words(3).join(' ') }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    user              { build(:user) }
    includes_food     true
    includes_drinks   true
    #capacity 16_000
    # starts_at '2017-12-11',
    # ends_at '2017-12-14'


    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
