class Product < ApplicationRecord
    has_one_attached :product_image

    validates :product_name, uniqueness: true, presence: true, length: { minimum: 10 }
    validates :product_date, presence: true
    validates :product_image, presence: true
    validates :product_price, presence: true, length: { in: 1..8 }
    validates :product_sku, presence: true, length: { is: 13 }, uniqueness: true
    validates :product_description, presence: true, length: { minimum: 10 }
    
end

