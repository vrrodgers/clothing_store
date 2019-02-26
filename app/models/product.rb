class Product < ApplicationRecord
    belongs_to :category
    has_many :sizes, through: :product_sizes
end
