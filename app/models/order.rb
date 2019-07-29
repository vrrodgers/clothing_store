class Order < ApplicationRecord
    belongs_to :product
    belongs_to :user
    has_many :carted_items
    before_save :set_subtotal

    def subtotal
        carted_item.collect{|carted_item| carted_item.valid? ? carted_item.unit_price * carted_item.quanity : 0}.sum

    end
    
    private 
    def set_subtotal
        self[:subtotal] = subtotal
    end

end
