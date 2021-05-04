class MoviesController < ApplicationController
    def first
        @movies = Movie.all
    end

    def index
        @movies = Movie.all
    end

    def new

    end

    def create
        @this = Movie.new(name: params[:name], year: params[:year], description: params[:description], image_url: params[:image_url], is_showing: params[:is_showing])

        if (@this.save) then
            flash[:success] = "正常に保存されました。"
            redirect_to "/admin/movies"
        else
            flash[:alart] = @this.errors.full_messages
            render :new
        end
    end

    def success
        # render plain: name
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to "/admin//movies"
    end

    def update
        @movie = Movie.find(params[:id])
        # redirect_to "/admin//movies"
    end
end
