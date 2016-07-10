class Order < ApplicationRecord
  validates :username, presence: true
  validates :phone_number, presence: true,numericality: { only_integer: true }
  validates :address, presence: true
  has_many :order_food_items, dependent: :destroy
  has_many :food_items, through: :order_food_items
end
