class Product < ApplicationRecord
    belongs_to :category
    has_many :sizes
    has_many :images

    
    
    
end
