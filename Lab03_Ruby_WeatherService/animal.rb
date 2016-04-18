class Animal

  attr_accessor :sound

  def initialize(sound)
    @sound = sound
  end

  def speak
    puts "#{sound}"
  end

  ##
  # We get these methods for free because of attr_accessor
  #
  # def sound
  #   @sound
  # end
  #
  # def sound=(value)
  #   @sound = value
  # end
  ##

end

class Cat < Animal
  def speak
    puts "I'm a cat, I speak on my terms"
  end
end

dog = Animal.new("Woof!")
dog.speak

cat = Cat.new("Meow")
cat.speak
puts "#{cat.sound}"
