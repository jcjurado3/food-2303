require 'rails_helper'

RSpec.describe 'Foods Count POROS' do
  describe "food count object" do
    it 'returns total hits attribute' do
      result = FoodsFacade.new.get_total_hits("sweet potatoes")

      expect(result.total_hits).to eq(55579)
    end
  end
end