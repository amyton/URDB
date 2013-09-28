class MoviesController < ApplicationController

  def homepage
    @all_movies = Movie.all
  end

  def show
    @movie = Movie.find_by_id(params[:id])
  end    

end