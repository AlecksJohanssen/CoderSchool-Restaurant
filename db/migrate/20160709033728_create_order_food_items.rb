class CreateOrderFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_food_items do |t|
      t.references :order, foreign_key: true
      t.references :food_item, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
