class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
     @artist = Artist.find(params[:id])
   end

  def new
   @artist = Artist.new
  end

  def create
  @artist = Artist.new(artist_params)

  if @artist.save
     redirect_to @artist
  else
     render 'new'
   end
  end

  def edit
  @artist = Artist.find(params[:id])
    end

def update
  @artist = Artist.find(params[:id])


  if @artist.update_attributes(artist_params)
    redirect_to @artist
  else
    render 'edit'
  end
end

def destroy
  @artist = Artist.destroy(params[:id])
  redirect_to root_path
end

def artist_params
  params.require(:artist).permit(:id, :name, :bio, {:song_ids => []})
end

end
