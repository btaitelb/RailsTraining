json.array!(@weather_readings) do |weather_reading|
  json.extract! weather_reading, :id, :temperature, :location, :description, :icon_url
  json.url weather_reading_url(weather_reading, format: :json)
end
