class MovieWatchlistsController < ApplicationController
  def index
    @movies = MovieWatchlist.all
  end

  def show
  end
end
