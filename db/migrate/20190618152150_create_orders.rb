class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.decimal :sub_total, precision: 10, scale: 2 
      t.decimal :tax, precision: 10, scale: 2
      t.decimal :total, precision: 10, scale: 2
      t.string :status

      t.timestamps
    end
  end
end
