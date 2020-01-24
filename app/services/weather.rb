
class Weather

  def initialize(zip)
    @zip = zip
  end

  def get_weather
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=' + @zip + ',us&appid=' + ENV["WEATHER_API_KEY"])
    response["weather"][0]["main"]
  end

  def self.get_weather_test
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=98642,us&appid=' + ENV["WEATHER_API_KEY"])
    # p response.parsed_response
    # response.parsed_response
  end
end
