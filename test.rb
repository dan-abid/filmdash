require "json"
require "rest-client"

response = RestClient.get "https://api.watchmode.com/v1/sources/?apiKey=gWw6LOBRd08bUW54mjl0r6j4O5JqW3IzXRAX0jME&types=sub"
repos = JSON.parse(response)

services = repos.map {|service| service["name"]}.uniq

pp services
