class Category < ApplicationRecord
    has_many :category_types
    has_many :sizes
    has_many :products
end
