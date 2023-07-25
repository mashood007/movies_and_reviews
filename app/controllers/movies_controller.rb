class MoviesController < ApplicationController
  before_action :find_movie, only: [:show]

  def index
    @movies = Movie.all.includes(:director)
  end

  def show; end

  def import
    ImportMoviesJob.perform_later(params[:file].path)
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
