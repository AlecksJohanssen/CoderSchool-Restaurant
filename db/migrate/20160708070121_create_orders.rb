class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :username
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
