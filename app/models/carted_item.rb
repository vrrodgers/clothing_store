class CartedItem < ApplicationRecord
    belongs_to :orders
    belongs_to :product

    def unit_price
        if persisted?
            self[:unit_price]
        else 
            product.price 
        end
    end

    def total 
        unit_price * quanity
    end

    private 

    def set_unit_price
        self[:unit_price] = unit_price
    end
    
    def set_total
        self[:total] = total * quanity
    end


end
