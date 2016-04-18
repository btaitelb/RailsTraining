class Weather
  attr_accessor :temperature,
                :location

  attr_accessor :icon_url

  def initialize(temperature,
                 description,
                 location="Bentonville, AR")
    @description = description
    @location = location
  end

  def to_s
    "It is currently:\n"+
      "\t#{@temperature} degrees and \n"+
      "\t#{@description} in #{@location}."
  end
end
