# Lab 3 - Ruby

## Intro

In this lab, we're exploring the ruby language itself, without any rails. We'll learn the syntax, fundamental concepts like arrays, blocks and objects, and will develop a library that we're going to use later in our rails app.


## Steps

0. **Pre-Lab:** go through irb, functions, functions_test
1. Look at `weather.rb` and `weather_tests.rb`. Implement `test_description`.
1. Add `test_to_s`
   - it should test for both the temperature as well as the description to be present in the output of `test_to_s`
   - To test if a string includes another string, you can use `String#include?`
           
           > "team".include?("i")
           => false
           > "meat".include?("me")
           => true

1. Create `weather_service.rb` and `weather_service_tests.rb`


## IRB - Interactive Ruby Console

In the terminal, type `irb` to get into an interactive ruby console. Here we can play with ruby commands and syntax interactively.

What is the output of the following commands?

```ruby
1+2+3
=>

"hello"
=>

my_var = "hello"
=>


puts my_var
=>

puts "#{my_var}, world!"
=>

puts '#{my_var} only gets interpolated with double quotes!'
=>

arr = [:rain, :sun, :cloud]
puts arr[0]
=>

weather = arr.shuffle.first
puts "The forecast for today is #{weather}"
=>

```

## Functions

While we can still use `irb` for more complex code, it's nice to not have to retype long blocks of code, so let's switch over to using a file. Take a look at `functions.rb` and `functions_tests.rb` in an editor.

- `functions.rb` defines some simple ruby functions
- We could test these in `irb`:

        irb> require './functions'
        done loading functions.rb
        => true
        irb> is_cold? 50
        => true

    - (note: if we change anything in `functions.rb`, we should restart `irb` or use `load` to reload the file)
- But we can also run ruby files:

        $ ruby ./functions.rb
        done loading functions.rb
        
- That wasn't so interesting. What just happened?

- How about running the tests?

        $ ruby ./functions_tests.rb
        done loading functions.rb
        Is 70° Cold? false
        Is 50° Cold? true
        Today's forecast is cloudy
        
    - We made this file executable, so can also just run it directly as `./functions_tests.rb`
    
