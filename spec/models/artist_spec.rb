
require 'rails_helper'

RSpec.describe Artist, type: :model do
    describe "validations" do

      it "is invalid without artist_name" do
        artist = Artist.new(name: "")
        artist.valid?
        expect(artist.errors).to have_key(:name)
      end


    describe "associations with songs" do
      let(:artist) {create :artist}

      let(:song1) { create :song, artist_name: "Mike", song_title: "Oh Yeah", artist: artist}

      it "has songs" do
        expect(artist.songs).to include(song1)

      end
    end
  end
end
