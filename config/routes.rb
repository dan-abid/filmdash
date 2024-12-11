Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/preferences", to: "pages#preferences", as: :preferences
  get "/preferences/movies", to: "pages#movies", as: :preferences_movies
  get "/watchlist", to: "movie_watchlists#index", as: :watchlist
  get "/watchlist/:id", to: "movie_watchlists#show", as: :watchlist_movie
  get 'details', to: 'pages#details'
end
