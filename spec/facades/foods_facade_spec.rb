require 'rails_helper'

RSpec.describe 'Foods Facade' do
  describe "food search" do
    before(:each) do
      @result = FoodsFacade.new.get_total_hits("sweet potatoes")
      @foods = FoodsFacade.new.get_food_list("sweet potatoes")
    end
    it "returns total results" do
      expect(@result.total_hits).to eq(55579)
    end

    it 'returns foods list' do
      expect(@foods.count).to eq(10)
    end
  end
end