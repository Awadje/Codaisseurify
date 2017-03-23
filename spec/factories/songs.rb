FactoryGirl.define do
  factory :song do
    artist_name {Faker::Hipster.word}
    song_title {Faker::Hipster.word}

  end
end
