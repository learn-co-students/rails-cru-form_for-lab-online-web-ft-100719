class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.save
    redirect_to @artist
    else
      render :new
    end
  end

  def update
    # raise params.inspect
    @artist=Artist.find(params[:id])
    @artist.update!(artist_params)
    @artist.save
    redirect_to @artist
    # redirect_to artists_path
    # redirect_to artist_path(@artist.id)
  end

  def edit
  @artist = Artist.find(params[:id])    
  end

  def show
    @artist= Artist.find(params[:id])
  end

  private

  def artist_params
  params.require(:artist).permit(:name, :bio )
  end

end
