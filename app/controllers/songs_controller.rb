class SongsController < ApplicationController
  
  def index
    @songs = Song.all 
  end 

  def show
    @song = Song.find_by(params[:id])
  end

  def new
    @song = Song.new 
  end

  def create
    @song = Song.new(get_song_params)
    @song.save 

    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
    @song.update(get_song_params)

    redirect_to song_path(@song)
  end

  private 

    def get_song_params
      params.require(:song).permit(:name, :genre_id, :artist_id)
    end 
end
