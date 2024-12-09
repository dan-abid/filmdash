class MovieWatchlist < ApplicationRecord
belongs to :user

validates :title, presence: true
validates :genre presence: true
end
