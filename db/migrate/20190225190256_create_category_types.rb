class CreateCategoryTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :category_types do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
