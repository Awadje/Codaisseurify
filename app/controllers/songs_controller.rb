class SongsController < ApplicationController
  before_action :load_artist, only: [:create, :new]

  def index
    @songs = Song.all
  end

  def show
    @song =Song.find(params[:id])
   end

  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs.build(song_params)
    if @song.save
      redirect_to @artist, notice: "Song successfully created"
    else
      render :new
    end
   end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
      if @song.update_attributes(song_params)
    redirect_to @song
  else
    render 'edit'
    end
  end

  def destroy
    @song = Song.destroy(params[:id])
    redirect_to root_path
  end

private

def song_params

    params.require(:song).permit(:artist_name, :song_title)

end

def load_artist
  @artist = Artist.find(params[:artist_id])
end

end
