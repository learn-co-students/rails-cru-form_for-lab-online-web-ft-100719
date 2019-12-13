class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
  def new
    @song = Song.new 
  end

  def create 
    #binding.pry
    @song = Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id] )
    @song.save
    redirect_to song_path(@song)
  end

  def show
    #binding.pry
    @song = Song.find_by(params[:id])
    @artist = @song.artist_id
    @genre = @song.genre_id

  end

  def edit
    @song = Song.find_by(params[:id])
  end

  def update
    @song = Song.find_by(params[:id])
    @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id] )
    @song.save
    redirect_to song_path(@song)
  end
end
