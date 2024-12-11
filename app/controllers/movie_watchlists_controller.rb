class MovieWatchlistsController < ApplicationController
  def index
    @movie_watchlists = current_user.movie_watchlists
  end

  def show
    @movie_watchlist = MovieWatchlist.find(params[:id])
  end

  def add
    output = params
      @movie_watchlist = MovieWatchlist.new(
        title: output[:title],
        user: current_user,
        movie_poster: output[:poster_path],
        description: output[:overview],
        release_date: Date.parse(output[:release_date]),
        rating: output[:vote_average]
      )
    if @movie_watchlist.save
      output[:watch_providers].each do |provider|
        StreamingLink.create!(
          name: provider[:provider_name],
          link: output[:streaming_link],
          movie_watchlist: @movie_watchlist
        )
      end
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
