class MovieWatchlistsController < ApplicationController
  def index
    @movie_watchlists = current_user.movie_watchlists
  end

  def show
    @movie_watchlist = MovieWatchlist.find(params[:id])
  end

  def add
    @movie_watchlist = MovieWatchlist.new(movie_params)
    if @movie_watchlist.save
      streaming_link = StreamingLink.new()
      redirect_to @movie_watchlist
    else
      render :new
    end
  end

  def delete
    @movie = MovieWatchlist.find(params[:id])
    @movie.destroy

    redirect_to movie_watchlist_index_path
  end
end
