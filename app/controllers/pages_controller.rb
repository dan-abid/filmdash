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
    @streaming_services_ids = @streaming_services.map { |streaming| streaming.source_id }.join(',')
    release_date_end = params[:period].to_i + 100000
    @release_date_end_s = release_date_end.to_s
    response = RestClient.get "https://api.watchmode.com/v1/list-titles/?apiKey=#{ENV["API_KEY_WATCHMODE"]}&types=#{params[:format]}&source_ids=#{@streaming_services_ids}&region=#{@country}&genres=#{params[:genre]}&release_date_start=#{params[:period]}&release_date_end=#{@release_date_end_s}&critic_score_low=8&limit=10"
    result_tt = JSON.parse(response)
    @result_titles = result_tt["titles"].sample(3)
    @result = @result_titles.map do |title|
      titles_details_parse = RestClient.get "https://api.watchmode.com/v1/title/#{title["imdb_id"]}/details/?apiKey=#{ENV["API_KEY_WATCHMODE"]}"
      JSON.parse(titles_details_parse)
    end
    # @result = result_tt
  end
end

# {"format"=>"movie", "runtime"=>"60", "genre"=>"1", "period"=>"20240101", "commit"=>"Generate 3 programs"}
