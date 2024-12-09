class MovieWatchlist < ApplicationRecord
belongs to :user
validates :title, presence: true
validates :description, presence: true
validates :director, presence: true
validates :year, presence: true
validates :rating, presence: true
validates :streaming_link, presence: true

def self.search(search)
  if search
    movie_watchlist = MovieWatchlist.find_by(title: search)
    if movie_watchlist
      self.where(movie_watchlist_id: movie_watchlist)
    else
      MovieWatchlist.all
    end
  else
    MovieWatchlist.all
  end
end
