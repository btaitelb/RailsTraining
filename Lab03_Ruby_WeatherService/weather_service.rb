require_relative './weather'
require 'open-uri'
require 'json'

class WeatherService
  def initialize(zip="72712", debug=true)
    @key = "<get this from the instructor>"
    @zip = zip
    @debug = debug
  end

  ##
  # Gets the current weather data as a ruby object
  # by fetching JSON from the weather API and parsing it.
  #
  # This also has some additional logic to make sure that
  # we don't call the API too much (and get blocked).
  ##
  def current
    if !@last_retrieved_at || Time.now - 60 > @last_retrieved_at
      # it's been at least a minute since we last fetched,
      # so fetch again
      url = "http://api.openweathermap.org/data/2.5/weather"
      url += "?zip=#{@zip}"
      url += "&APPID=#{@key}"
      url += "&units=imperial"

      @current = JSON.parse(weather_json(url))
      @last_retrieved_at = Time.now
    end

    @current
  end

  ##
  # Fetches the raw json from the provided url,
  # or returns sample weather data when we're in debug mode
  ##
  def weather_json(url)
    if @debug
      sample_json
    else
      open(url).read
    end
  end

  # since the API has limits on the number of times we can call it,
  # we'll use this sample_json method to mock results from the API
  def sample_json
    '{     "coord" : {"lon":-94.21,"lat":36.37},
         "weather" : [{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],
            "base" : "cmc stations",
            "main" : {"temp":64.4,"pressure":1022,"humidity":72,"temp_min":62.6,"temp_max":66.2},
            "wind" : {"speed":5.82,"deg":110},
          "clouds" : {"all":75},
              "dt" : 1460966220,
             "sys" : {"type":1,"id":281,"message":0.0062,"country":"US","sunrise":1460979493,"sunset":1461027255},
              "id" : 4101260,
            "name" : "Bentonville",
             "cod" : 200     }'
  end

  ##
  # Takes the raw weather data from the "current" method
  # and converts it into a simple Weather object for us to use.
  ##
  def weather

    temp = 32
    desc = "snow"
    loc  = "Denver"

    weather = Weather.new(temp, desc, loc)

    # icon_url is of the form http://openweathermap.org/img/w/04n.png
    weather.icon_url = "???"

    weather
  end

end
