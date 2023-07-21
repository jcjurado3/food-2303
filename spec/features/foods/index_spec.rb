require 'rails_helper'

RSpec.describe 'Foods Index Page' do
  describe '/foods' do
    it 'displays total number of items returned by the search' do
      visit root_path

      fill_in :q, with: "sweet potatoes"

      click_on("Search")

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("30,000 resutls found")
    end

    it 'displays list of ten foods that contain the ingredient' do

    end

    it 'displays foods attributes' do
      
    end
  end
end