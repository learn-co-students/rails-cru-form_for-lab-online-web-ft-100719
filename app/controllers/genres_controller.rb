class GenresController < ApplicationController
    
    def index 

    end 

    def new 
        
    end 

    def create 
        @genre = Genre.new(genre_params(:name))
        @genre.save 
        redirect_to genre_path(@genre)
    end 

    def edit 
        @genre = Genre.find_by_id(params[:id])
    end 

    def update 
        @genre = Genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end 

    def show 
        @genre = Genre.find_by_id(params[:id])
    end 

    private 

    def genre_params(*args) 
        params.require(:genre).permit(*args)
    end
end
