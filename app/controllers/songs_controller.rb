class SongsController < ApplicationController
  def new
    @song = Song.new
  end 
  
  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song) 
  end 

  def show
    @song = Song.find_by(params[:id])
    @genre = Song.find_by(params[:genre_id])
  end

  def edit
    @song = Song.find_by(params[:id])
  end 

  def update
      @song = Song.find(params[:id])
      @song.update(song_params)
      redirect_to song_path(@song) 
  end 

  private

  def song_params
    params.require(:song).permit!
  end
end
