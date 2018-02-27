class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :location_id
      t.integer :category_id
      t.integer :food_type_id
      t.integer :user_id

      t.timestamps
    end
  end
end
