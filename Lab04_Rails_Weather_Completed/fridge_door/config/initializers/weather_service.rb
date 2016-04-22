require Rails.root.join('lib/weather_service.rb')

options = Rails.application.config_for(:weather)
$weatherService = WeatherService.new(options)
