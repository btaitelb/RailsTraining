class Weather
  attr_accessor :temperature,
                :location,
                :description

  attr_accessor :icon_url

  def initialize(temperature,
                 description,
                 location="Bentonville, AR")
    @temperature = temperature
    @description = description
    @location = location
  end

  def to_s
    "It is currently:\n"+
      "\t#{@temperature} degrees and \n"+
      "\t#{@description} in #{@location}."
  end
end
