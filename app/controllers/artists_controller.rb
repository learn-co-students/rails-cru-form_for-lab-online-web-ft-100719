class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create 
    #binding.pry
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    @artist.save
    redirect_to artist_path(@artist)
  end 

  def show
    #binding.pry
    @artist = Artist.find_by(params[:id])
  end

  def edit
    @artist = Artist.find_by(params[:id])
  end
  
  def update
    @artist = Artist.find_by(params[:id])
    @artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
    @artist.save
    redirect_to artist_path(@artist)
  end 
end
