class Location < ApplicationRecord
    has_attached_file :location_img, styles: { medium: "572x360#", thumb: "286x180>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :location_img, content_type: /\Aimage\/.*\z/

    has_many :restaurant_locations, dependent: :destroy
    has_many :restaurants, through: :restaurant_locations
end
