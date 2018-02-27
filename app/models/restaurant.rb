class Restaurant < ApplicationRecord
    validates_presence_of :name, presence: :true
    has_attached_file :restaurant_img, styles: { medium: "300x300>", thumb: "286x180>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :restaurant_img, content_type: /\Aimage\/.*\z/
end
