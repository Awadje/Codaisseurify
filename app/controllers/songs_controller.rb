class SongsController < ApplicationController



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
  @song = Song.new(song_params)

  if @song.save
     redirect_to @song
  else
     render 'new'
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

def song_params
  params.require(:song).permit(:id, :artist_name, :song_title, :artist_id)
end

end
