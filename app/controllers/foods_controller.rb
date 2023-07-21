class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.new.get_food_list(params[:q])
    # require 'pry'; binding.pry
  end
end