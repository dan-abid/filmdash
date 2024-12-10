require "json"
require "rest-client"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def preferences
  end

  def movies
    # raise
    @vpn = current_user.vpn
    @country = current_user.country.code
    @streaming_services = current_user.streaming_services
    @streaming_services_ids = @streaming_services.map { |streaming| streaming.source_id }.join('|')
    @release_date_start = params[:period]
    @runtime_min = params[:runtime]
    @genre = params[:genre]
    # request_url = build_tmdb_url
    request_url = build_tmdb_url

    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true

    # request = Net::HTTP::Get.new(url)
    # request["accept"] = 'application/json'
    # request["Authorization"] = "Bearer #{ENV["API_KEY_TMDB"]}"

    # response = http.request(request)
    # reponse_body = JSON.parse(response.read_body)
    request_headers = {
      Authorization: "Bearer #{ENV["API_KEY_TMDB"]}",
      accept: "application/JSON"
    }
    response = RestClient.get(request_url, request_headers)
    result_tt = JSON.parse(response)

    @result = result_tt["results"].sample(3)
    # raise
    # seed ={}
    # url = "https://api.watchmode.com/v1/list-titles/?apiKey=#{ENV["API_KEY_WATCHMODE"]}&types=#{params[:format]}&source_ids=#{@streaming_services_ids}&source_types=sub&region=#{@country}&genres=#{params[:genre]}&release_date_start=#{params[:period]}&release_date_end=#{@release_date_end_s}&critic_score_low=8&limit=250"

    # if seed.key?(url) == false
    #   response = RestClient.get(url)
    #   result_tt = JSON.parse(response)
    #   seed[url] = result_tt
    # end
    # @result_titles = result_tt["titles"].sample(3)
    # # raise
    # @result = @result_titles.map do |title_infos|
    #   titles_details_parse = RestClient.get "https://api.watchmode.com/v1/title/#{title_infos["imdb_id"]}/details/?apiKey=#{ENV["API_KEY_WATCHMODE"]}&append_to_response=sources"
    #   JSON.parse(titles_details_parse)
    # end
    # @result = result_tt
  end

  private

  def build_tmdb_url
    base_url = "https://api.themoviedb.org/3/discover/movie"
    params = {
      include_adult: false,
      include_video: false,
      page: 1,
      sort_by: "popularity.desc",
      watch_region: "#{@country}",
      "primary_release_date.gte" => "#{@release_date_start}",
      with_watch_monetization_types: "flatrate",
      with_watch_providers: "#{@streaming_services_ids}",
      "with_runtime.gte" => "#{@runtime_min}",
      with_genres: "#{@genre}",
      "primary_release_date.lte" => "#{Date.parse(@release_date_start).advance(years: 10).strftime("%Y-%m-%d")}",
      "with_runtime.lte" => "#{@runtime_min.to_i + 60}",
      "vote_average.gte" => 7
    }
    return "#{base_url}?#{params.map { |key, value| "#{key}=#{value}" }.join('&')}"
  end
end

# {"format"=>"movie", "runtime"=>"60", "genre"=>"1", "period"=>"20240101", "commit"=>"Generate 3 programs"}
