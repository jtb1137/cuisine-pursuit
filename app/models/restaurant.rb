class Restaurant < ApplicationRecord
    validates_presence_of :name, presence: :true
    has_attached_file :restaurant_img, styles: { medium: "572x360#", thumb: "286x180>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :restaurant_img, content_type: /\Aimage\/.*\z/

    has_many :restaurant_categories, dependent: :destroy
    has_many :categories, through: :restaurant_categories
    has_many :restaurant_locations, dependent: :destroy
    has_many :locations, through: :restaurant_locations
    has_many :reviews, dependent: :destroy

    accepts_nested_attributes_for :categories
    accepts_nested_attributes_for :locations

    def categories_attributes=(category_attributes)
        if category_attributes != nil
            category_attributes.values.each do |category_attribute|
                new_category = Category.find_or_create_by(category_attribute)
                self.categories << new_category
            end
        end
    end

    def locations_attributes=(location_attributes)
        location_attributes.values.each do |location_attribute|
            new_location = Location.find_or_create_by(location_attribute)
            self.locations << new_location
        end
    end
end
