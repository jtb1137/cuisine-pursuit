class Restaurant < ApplicationRecord
    validates_presence_of :name, presence: :true
    has_attached_file :restaurant_img, styles: { medium: "1144x720>", thumb: "286x180>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :restaurant_img, content_type: /\Aimage\/.*\z/

    has_many :restaurant_categories
    has_many :categories, through: :restaurant_categories
    accepts_nested_attributes_for :categories

    def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
            new_category = Category.find_or_create_by(category_attribute)
            self.categories << new_category
        end
    end
end
