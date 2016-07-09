class Menu < ApplicationRecord
has_many :impressions, :as=>:impressionable
ratyrate_rater
def view_count
    impressions.size
  end