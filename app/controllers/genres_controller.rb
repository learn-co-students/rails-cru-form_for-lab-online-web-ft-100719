class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genre_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def show
        #binding.pry
        @genre = Genre.find_by_id(params[:id])
        
    end    

    def edit
        @genre = Genre.find_by_id(params[:id])
    end     

    def update
        @genre = Genre.find_by_id(params[:id])
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end    

    private
 
 
# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action. This
# should come after the other methods
 
    def genre_params(*args)
        params.require(:genre).permit(*args)
    end
end
