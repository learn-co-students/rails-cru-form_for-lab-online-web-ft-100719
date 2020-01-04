class GenresController < ApplicationController
    
    def index 

    end 

    def new 
        @genre = Genre.new
    end 

    def create 
        @genre = Genre.new(genre_params)
        @genre.save 
        redirect_to genre_path(@genre)
    end 

    def edit 
        @genre = Genre.find_by_id(params[:id])
    end 

    def update 
        @genre = Genre.update(genre_params)
        redirect_to genre_path(@genre)
    end 

    def show 
        @genre = Genre.find_by_id(params[:id])
    end 

    private 

    def genre_params 
        params.require(:genre).permit(:name)
    end
end
