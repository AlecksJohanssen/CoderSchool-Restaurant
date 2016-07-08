class MenuController < ApplicationController
  def index
    @sections = %w(Breakfast Lunch Dinner)
   @food_items = FoodItem.all.filter_by_section(params[:section]).order("#{params[:sort_param]}")
if params[:search]
  @food_items = FoodItem.search(params[:search])
    end

  end
end
