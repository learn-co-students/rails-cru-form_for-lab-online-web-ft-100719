class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end

    def show
        #binding.pry
        @song = Song.find_by_id(params[:id])
        
    end    

    def edit
        @song = Song.find_by_id(params[:id])
    end     

    def update
        @song = Song.find_by_id(params[:id])
        @song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end    

    private
 
 
# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action. This
# should come after the other methods
 
    def song_params(*args)
        params.require(:song).permit(*args)
    end
end
