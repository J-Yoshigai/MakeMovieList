class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def new

    end

    def create
        Movie.create(name: params[:name], year: params[:year], description: params[:description], image_url: params[:image_url], is_showing: params[:is_showing])
        redirect_to "/movies"
        # redirect_to "/admin/movies/success"
    end

    def success
        # render plain: name
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to "/movies"
    end
    def destroy
        @movie = Movie.find(params[:id])
        @movie.update
        redirect_to "/movies"
    def
end
