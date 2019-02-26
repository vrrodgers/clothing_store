class ProductType < ApplicationRecord
    belongs_to :category_type
    belongs_to :products
end
