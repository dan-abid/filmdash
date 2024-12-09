class CreateMovieWatchlists < ActiveRecord::Migration[7.1]
  def change
    create_table :movie_watchlists do |t|
      t.string :title
      t.timestamps null: false

    end
  end
end
