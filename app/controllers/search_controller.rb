class SearchController < ApplicationController
  def index
    service = Faraday.new(url: 'https://www.potterapi.com/v1/characters')
    search_params = "&house=#{params["house"]}&orderOfThePhoenix=true"
    key = "?key=#{ENV['POTTER_API_KEY']}"
    character_info = service.get("#{key}#{search_params}")
    @characters = JSON.parse(character_info.body, symbolize_names: true)
  end
end
