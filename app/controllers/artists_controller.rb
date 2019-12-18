class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end 
  
  def create
    @artist = Artist.new(params[.require(:artist).permit(:name, :bio)])
  end 

  def update
  end

  def show
    @artist = Artist.find_by(params[:id])
  end
end
