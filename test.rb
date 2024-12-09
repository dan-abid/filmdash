require "json"
require "rest-client"

# response = RestClient.get "https://api.watchmode.com/v1/list-titles/?apiKey="
# selection = JSON.parse(response)

# pp selection

# it returns: {"titles"=>
  # [{"id"=>1627911, "title"=>"Damsel", "year"=>2024, "imdb_id"=>"tt13452446", "tmdb_id"=>763215, "tmdb_type"=>"movie", "type"=>"movie"},
  #   {"id"=>1530411, "title"=>"Beverly Hills Cop: Axel F", "year"=>2024, "imdb_id"=>"tt3083016", "tmdb_id"=>280180, "tmdb_type"=>"movie", "type"=>"movie"},
  #   {"id"=>1675091, "title"=>"Madame Web", "year"=>2024, "imdb_id"=>"tt11057302", "tmdb_id"=>634492, "tmdb_type"=>"movie", "type"=>"movie"}],
  # "page"=>1,
  # "total_pages"=>9,
  # "total_results"=>26}


# response = RestClient.get "https://api.watchmode.com/v1/releases/?apiKey="
# repos = JSON.parse(response)

# streaming = repos["releases"].map { |stream| "{ source_id: #{stream["source_id"]}, name: #{stream["source_name"]} }" }.uniq
# pp streaming




# list title:

# response = RestClient.get "https://api.watchmode.com/v1/title/tt17526714/sources/?apiKey="
# repos = JSON.parse(response)

# pp repos

# release_date_end = ("20100101").to_i + 100000
# release_date_end_s = release_date_end.to_s
# pp release_date_end_s
<% @result.each do |resultat| %>
  <div class="movie-card" style="background-image:url('<%= resultat["poster"] %>')">
    <%# <div class="placeholder" alt="Placeholder 2"></div> %>
  </div>
  <% end %>
