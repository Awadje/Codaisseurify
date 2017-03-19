class Song < ApplicationRecord
  validates :artist_name, presence: true
  validates :song_title, presence: true
  
  belongs_to :artist
end
