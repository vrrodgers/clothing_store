class Product < ApplicationRecord
    belongs_to :category
    has_many :sizes
    has_many :images
    has_many :orders
    has_many :carted_items

    
    
    
end
