
FactoryGirl.define do
  factory :artist do
    name {Faker::Name.name}
    bio {Faker::Hipster.word}
  end
end
