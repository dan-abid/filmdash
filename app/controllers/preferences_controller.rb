class PreferencesController < ApplicationController

  def preferences
    # Logic to fetch and display current preferences
    @preferences = fetch_preferences(current_user)
    render 'preferences/preferences'
  end

  private

  def fetch_preferences(user)
    # Placeholder method to fetch user preferences
    {
      format: 'Digital',
      runtime: 120,
      genre: 'Action',
      release_date: '2022-01-01'
    }
  end
end
