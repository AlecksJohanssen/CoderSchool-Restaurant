class FoodItem < ApplicationRecord
  def image_url_or_auto
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/#{name}"
  end
  end
  def self.filter_by_section(section)
    where("Section Like ?", "%#{section}%")
  end

end
