class CreateWeatherReadings < ActiveRecord::Migration
  def change
    create_table :weather_readings do |t|
      t.decimal :temperature, precision: 5, scale: 2
      t.string :location
      t.string :description
      t.string :icon_url

      t.timestamps null: false
    end
  end
end
