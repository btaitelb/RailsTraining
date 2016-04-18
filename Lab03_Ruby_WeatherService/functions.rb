def predict_weather
  [:sunny, :cloudy, :rainy].shuffle.first
end

def is_cold?(degrees)
  degrees < 65
end

def describe_temperature(degrees)
  if degrees < 32
    :freezing
  elsif is_cold?(degrees)
    :cold
  elsif degrees < 78
    :warm
  else
    :hot
  end
end

puts "done loading functions.rb"
