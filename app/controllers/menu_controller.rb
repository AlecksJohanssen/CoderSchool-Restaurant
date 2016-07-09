class MenuController < ApplicationController
  def index
    @sections = %w(Breakfast Lunch Dinner)
    @food_items = FoodItem.all.filter_by_section(params[:section]).order("#{params[:sort_param]}")
    @cuisines = %w(Noodles Rice Soup)
    if params[:search]
      @food_items = FoodItem.search(params[:search])
       @food_items = FoodItem.filter_by_cuisine(params[:cuisine])
    end
  end

  def order
   @food_item = FoodItem.find(params[:id])
  end
end
