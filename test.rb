# require "json"
# require "rest-client"

# response = RestClient.get "https://api.watchmode.com/v1/genres/?apiKey=gWw6LOBRd08bUW54mjl0r6j4O5JqW3IzXRAX0jME"
# repos = JSON.parse(response)

# genres = repos.map { |genre| genre["name"] }.uniq
# pp genres
