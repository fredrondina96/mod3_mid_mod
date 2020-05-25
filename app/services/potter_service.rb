class PotterService

  def self.load_potter_data(house)
    service = Faraday.new(url: 'https://www.potterapi.com/v1/characters')
    search_params = "&house=#{house}&orderOfThePhoenix=true"
    key = "?key=#{ENV['POTTER_API_KEY']}"
    data = service.get("#{key}#{search_params}")
    data = JSON.parse(data.body, symbolize_names: true)
  end
end
