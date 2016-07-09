class FoodItem < ApplicationRecord
  has_many :order_food_items
  has_many :impressions, :as=>:impressionable


  def image_url_or_auto
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/#{name}"
    end
  end

  def self.filter_by_cuisine(cuisine)
    where("cuisine like ?", "%#{cuisine}%")
  end
  def self.filter_by_section(section)
    where("Section Like ?", "%#{section}%")
  end

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
def impression_count
    impressions.size
  end

  def unique_impression_count
    impressions.group(:ip_address).size #UNTESTED: might not be correct syntax
  end
end
