class Location < ApplicationRecord
    has_many :restaurant_locations
    has_many :restaurants, through: :restaurant_locations
end
