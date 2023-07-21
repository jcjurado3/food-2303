require 'rails_helper'

RSpec.describe 'Foods Index Page' do
  describe '/foods' do
    before(:each) do
      visit root_path

      fill_in :q, with: "sweet potatoes"

      click_on("Search")
    end
    it 'displays total number of items returned by the search' do
      

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("55579 results found")
    end

    it 'displays list of ten foods that contain the ingredient' do
      expect(page).to have_content("List of Ten Results")
      expect(page).to have_css('.foods-list', count: 10)
    end

    it 'displays foods attributes' do

      within("#results") do
        expect(page).to have_content("GTIN/UPC Code:")
        expect(page).to have_content("Description:")
        expect(page).to have_content("Brand Owner:")
        expect(page).to have_content("Ingredients:")
      end
    end
  end
end