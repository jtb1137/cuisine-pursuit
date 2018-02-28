class Location < ApplicationRecord
    has_many :restaurant_locations, dependent: :destroy
    has_many :restaurants, through: :restaurant_locations
end
