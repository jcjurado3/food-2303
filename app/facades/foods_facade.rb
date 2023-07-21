class FoodsFacade
  def get_food_list(food)
    service = UsdaService.new.get_all_items(food)

    results = service[:foods]
    
    results.map do |food|
      Food.new(food)
    end
  end

end