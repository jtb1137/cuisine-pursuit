class CreateRestaurantLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_locations do |t|
      t.integer :restaurant_id
      t.integer :location_id

      t.timestamps
    end
  end
end
