class WeatherReading < ActiveRecord::Base
  scope :recent, -> { order(created_at: :desc).limit(3) }
end
