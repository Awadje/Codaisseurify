class Artist < ApplicationRecord
  validates :name, presence: true
  validates :bio, presence: true


  has_many :songs, :dependent => :destroy
  has_many :photos, :dependent => :destroy
  has_many :photos
end
