module WeatherReadingsHelper
  def weather_text(weather = @weather)
    "#{weather.temperature} &deg; in #{weather.location}".html_safe
  end

  def weather_icon(weather = @weather)
    image_tag(weather.icon_url)
  end
  
end
