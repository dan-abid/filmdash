class CreateMovieWatchlists < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_watchlists do |t|

      t.timestamps
    end
  end
end
