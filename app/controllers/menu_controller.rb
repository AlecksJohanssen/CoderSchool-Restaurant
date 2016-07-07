class MenuController < ApplicationController
  def index
    @sections = %w(Breakfast Lunch Dinner)
    @food_items = FoodItem.all.filter_by_section(params[:section]).order("#{params[:sort_param]} ")
  end
def show

end
end
