class UsdaService
  def get_all_items(food)
    get_url("/fdc/v1/foods/search?query=#{food}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params["api_key"] = ENV["USDA_DB_API_KEY"]
    end
  end
end