class MoviesController < ApplicationController
  def index
    render json: '{ "a": "Hello World"}'
  end

  def create
    @movie = Movie.new movie_params

    @movie.save
    render json: @movie
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :description)
    end
end
