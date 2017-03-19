require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a home type" do
      build_stubbed :artist_name, :song_title
      song = Song.new(artist_name: "")
      song.valid?
      expect(song.errors).to have_key(:artist_name)
    end
end



end
