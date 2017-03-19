FactoryGirl.define do
  factory :song do
    artist_name { Faker::Name.first_name }
    song_title "MyString"
    artist nil
  end
end
