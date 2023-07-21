class FoodsFacade
  def get_food_list(food)
    service = UsdaService.new.get_all_items(food)

    results = service[:foods]
    
    results.map do |food|
      Food.new(food)
    end
  end

  def get_total_hits(food)

    service = UsdaService.new.get_all_items(food)
    
    FoodCount.new(service)
  end

end