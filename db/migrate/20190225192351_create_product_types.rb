class CreateProductTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_types do |t|
      t.references :category_type, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
