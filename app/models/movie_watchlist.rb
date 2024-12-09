class MovieWatchlist < ApplicationRecord
belongs to :user
validates :title, presence: true
validates :description, presence: true
validates :director, presence: true
validates :year, presence: true
validates :rating, presence: true
validates :streaming_link, presence: true
end
