class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    #@movie = Movie.new(title: "...", release: 0000 , synopsis: "...", country: "...", runtime: 0, director: "...", genre: "...")
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :release, :synopsis, :country, :runtime, :director, :genre)
    end
end
