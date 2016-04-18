#!/bin/env ruby
# coding: iso-8859-1

require_relative './functions.rb'

puts "Is 70° Cold? #{is_cold?(70)}"
puts "Is 50° Cold? #{is_cold?(50)}"
puts "Today's forecast is #{predict_weather}"
puts "32° is #{describe_temperature(32)}"
puts "100° is #{describe_temperature(100)}"
