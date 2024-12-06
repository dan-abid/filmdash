require "json"
require "rest-client"

# streaming_services_array = [
#   {name: "The Criterion Channel"},
#   {name: "Netflix"},
#   {name: "Hulu"},
#   {name: "Max"},
#   {name: "Prime Video"},
#   {name: "Disney+"},
#   {name: "AppleTV+"},
#   {name: "Paramount+"},
#   {name: "Showtime"},
#   {name: "Crave"},
#   {name: "Peacock Premium"},
#   {name: "Crave Starz"},
#   {name: "STARZ"},
#   {name: "MGM+"},
#   {name: "Now TV"},
#   {name: "BINGE"},
#   {name: "Kanopy"},
#   {name: "Youtube Premium"},
#   {name: "ICI TOU.TV"},
#   {name: "MUBI"}
# ]
# sorted_streamings = streaming_services_array.sort_by { |services| services[:name] }



response = RestClient.get "https://api.watchmode.com/v1/genres/?apiKey=gWw6LOBRd08bUW54mjl0r6j4O5JqW3IzXRAX0jME"
repos = JSON.parse(response)

genres = repos.map { |genre| genre["name"] }.uniq
pp genres
