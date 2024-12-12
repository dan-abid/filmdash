class MovieWatchlistsController < ApplicationController
  def index
    @movie_watchlists = current_user.movie_watchlists
  end

  def show
    @movie_watchlist = MovieWatchlist.find(params[:id])
  end

  def new
    @movie_watchlist = MovieWatchlist.new
  end

  def create
    @movie_watchlist = MovieWatchlist.new(movie_watchlist_params)
    @movie_watchlist.user = current_user
    @movie_watchlist.save
  end

  def destroy
    @movie_watchlist = MovieWatchlist.find(params[:id])
    @movie_watchlist.destroy
  end

  private

  def movie_watchlist_params
    params.require(:movie_watchlist).permit(
      :title,
      :overview,
      :release_date,
      :poster_path,
      :backdrop_path,
      :tmdb_id,
      :vote_average,
      :runtime,
      :trailer_youtube_key
    )
  end
end
