#!/bin/env ruby

require_relative './weather'

def test_temperature
  temp = 50
  w = Weather.new(temp, :unknown)
  if w.temperature != 50
    puts "test_temperature FAILED\n"+
         "\tExpected: #{temp}, but Got: #{w.temperature}"
  else
    puts "test_temperature PASSED"
  end
end

def test_description
  desc = :rainy
  w = Weather.new(-1, desc)
  if w.description != desc
    puts "test_description FAILED\n"+
         "\tExpected: #{desc}, but Got: #{w.description}"
  else
    puts "test_description PASSED"
  end
end

def test_default_location
  w = Weather.new(-1, :unknown)
  expected_loc = "Bentonville, AR"
  if w.location != expected_loc
    puts "test_default_location FAILED\n"+
         "\tExpected: #{expected_loc}, but Got: #{w.location}"
  else
    puts "test_default_location PASSED"
  end
end

def test_to_s
  temp = 65
  desc = :cloudy
  w = Weather.new(temp, desc)

  str = w.to_s

  if !str.include?("cloudy")
    puts "test_to_s FAILED: did not find 'cloudy'"
  elsif !str.include?("65")
    puts "test_to_s FAILED: did not find '65'"
  else
    puts "test_to_s PASSED"
  end
end

def run_all_tests
  test_temperature
  test_description
  test_default_location
  test_to_s
end

run_all_tests
