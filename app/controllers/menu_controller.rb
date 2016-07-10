class MenuController < ApplicationController
  def index
    @food_items = FoodItem.order('view_count ASC')
    @sections = %w(Breakfast Lunch Dinner Drinks)
    @food_items = FoodItem.filter_by_section(params[:section]).order("#{params[:sort_param]} ")

    @cuisines = %w(Noodles Rice Soup)
  if params[:cuisine].present?
     @food_items = FoodItem.filter_by_cuisine(params[:cuisine])
  else
    FoodItem.all
  end
    if params[:search]
      @food_items = FoodItem.search(params[:search])
    end
  end

end
