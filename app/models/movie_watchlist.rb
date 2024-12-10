class MovieWatchlist < ApplicationRecord
  belongs_to :user
  has_many :streaming_links
end
