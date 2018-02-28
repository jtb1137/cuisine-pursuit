class RestaurantLocation < ApplicationRecord
    belongs_to :restaurant
    belongs_to :location
end
