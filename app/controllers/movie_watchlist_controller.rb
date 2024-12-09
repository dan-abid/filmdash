class MovieWatchlistController < ApplicationController
  def index
    @movie_watchlist = MovieWatchlist.all
  end

  def show
    @movie_watchlist = MovieWatchlist.find(params[:id])
  end

  def new
    @movie_watchlist = MovieWatchlist.new
  end

  def create
    @movie_watchlist = MovieWatchlist.new(movie_watchlist_params)
    @movie_watchlist.save
    redirect_to movie_watchlist_path(@movie_watchlist)
  end

  def edit
    @movie_watchlist = MovieWatchlist.find(params[:id])
  end

  def update
    @movie_watchlist = MovieWatchlist.find(params[:id])
    @movie_watchlist.update(movie_watchlist_params)
    redirect_to movie_watchlist_path(@movie_watchlist)
  end

  def destroy
    @movie_watchlist = MovieWatchlist.find(params[:id])
    @movie_watchlist.destroy
    redirect_to movie_watchlist_index_path
  end

  private

  def movie_watchlist_params
    params.require(:movie_watchlist).permit(:title, :genre, :release_date, :runtime, :format, :critic_score, :imdb_id)
  end
end
