class PreferencesController < ApplicationController

  def movies
    @suggested_movies = fetch_suggested_movies(current_user)
    render 'pages/preferences_movies'
  end

  private

  def fetch_suggested_movies(user)
    # Placeholder to fetch suggested movies
    Movie.limit(3)
  end
end
