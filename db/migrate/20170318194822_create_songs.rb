class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :artist_name
      t.string :song_title
  

      t.timestamps
    end
  end
end
