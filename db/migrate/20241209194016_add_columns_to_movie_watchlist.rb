class AddColumnsToMovieWatchlist < ActiveRecord::Migration[7.1]
  def change
    add_column :movie_watchlists, :title, :string
    add_column :movie_watchlists, :description, :string
    add_column :movie_watchlists, :director, :string
    add_column :movie_watchlists, :year, :integer
    add_column :movie_watchlists, :movie_poster, :string
    add_column :movie_watchlists, :rating, :integer
    add_column :movie_watchlists, :streaming_link, :string
  end
end
