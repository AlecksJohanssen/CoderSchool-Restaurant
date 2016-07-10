class Menu < ApplicationRecord
has_many :impressions, :as=>:impressionable

def view_count
    impressions.size
  end
