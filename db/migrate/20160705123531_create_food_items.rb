class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :section
      t.string :image_url
      t.string :cuisine
      t.integer :viewcount, :impressions_count
      t.timestamps
    end
  end
end
