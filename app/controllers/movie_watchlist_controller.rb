class MovieWatchlistController < ApplicationController

  def index
    @movies = MovieWatchlist.all
  end

def add
  @movie_watchlist = MovieWatchlist.new(movie_params)
  if @movie_watchlist.save
    redirect_to @movie
  else
    render :new
  end
end

def show
  @movie = MovieWatchlist.find(params[:id])
end

def delete
  @movie = MovieWatchlist.find(params[:id])
  @movie.destroy

  redirect_to movie_watchlist_index_path
end
