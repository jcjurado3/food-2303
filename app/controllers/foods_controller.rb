class FoodsController < ApplicationController
  def index
    @result = FoodsFacade.new.get_total_hits(params[:q])
    @foods = FoodsFacade.new.get_food_list(params[:q])
  end
end