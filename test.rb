require "json"
require "rest-client"

response = RestClient.get "https://api.watchmode.com/v1/releases/?apiKey=gWw6LOBRd08bUW54mjl0r6j4O5JqW3IzXRAX0jME"
repos = JSON.parse(response)
# => repos is an `Array` of `Hashes`.

type = repos["releases"].map { |release| release["type"] }.uniq
pp type
