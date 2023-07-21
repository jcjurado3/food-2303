require 'rails_helper'

RSpec.describe 'Foods  POROS' do
  describe "food object" do
    it 'returns food objects with attributes' do
      foods = FoodsFacade.new.get_food_list("sweet potatoes")

      expect(foods.count).to eq(10)

      foods.each do |food|
        expect(food.brand_owner).to be_a(String)
        expect(food.upc_code).to be_a(String)
        expect(food.description).to be_a(String)
        expect(food.ingredients).to be_a(String)

      end
    end
  end
end