class RemoveIdColumnsFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :location_id
    remove_column :restaurants, :category_id
    remove_column :restaurants, :food_type_id
  end
end
