require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "association with artist" do
    let(:name, :bio) { create :name, :bio }

    it "belongs to a artist" do
      song = artist.songs.new(artist_name:, song_title:)

      expect(song.artist).to eq(artist)
    end
  end
end
