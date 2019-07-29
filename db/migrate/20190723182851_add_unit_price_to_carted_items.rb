class AddUnitPriceToCartedItems < ActiveRecord::Migration[5.1]
  def change
   add_column :carted_items, :unit_price, :decimal
  end
end
