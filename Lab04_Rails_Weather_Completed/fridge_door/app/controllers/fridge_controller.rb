class FridgeController < ApplicationController
  def index
    notes = Note.all
    todos = Todo.incomplete
    weathers = WeatherReading.recent

    @items = (notes + todos + weathers).shuffle
  end

  def demo
    render :demo, layout: false
  end
end
