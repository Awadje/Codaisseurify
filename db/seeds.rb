Photo.delete_all
Song.delete_all
Artist.delete_all




artist1 = Artist.create!(name: "Mickey Mouse", bio: "Mousing and full time DJ")
artist2 = Artist.create!(name: "Donald Duck", bio: "Duck and full time tekno DJ")
artist3 = Artist.create!(name: "Goofey", bio: "Just goofing arround")



Song.create!([
  { artist_name: "Mickey Mouse", song_title: "House Mouse", artist: artist1 },
  { artist_name: "Donald Duck", song_title: "Duck Tales", artist: artist2 },
  { artist_name: "Goofey", song_title: "Everyday I'm Goofing", artist: artist3 },
])

photo1 = Photo.create!(artist:  artist1,  remote_image_url: "https://res.cloudinary.com/dnbyfobad/image/upload/v1489671252/event1_xdfsrj.jpg")
photo2 = Photo.create!(artist: artist2, remote_image_url: "https://res.cloudinary.com/dnbyfobad/image/upload/v1489671253/event2_trnlm3.jpg")
photo3 = Photo.create!(artist: artist3, remote_image_url: "https://res.cloudinary.com/dnbyfobad/image/upload/v1489671257/event3_yrkcwy.jpg")
