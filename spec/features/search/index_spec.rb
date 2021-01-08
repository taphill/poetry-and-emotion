require 'rails_helper'

RSpec.describe "Search/Index", type: :feature do
  context 'when a user searchs for an author' do
    before do
      visit root_path
      fill_in :author, with: 'Emily'
      click_button 'Get Poems'
    end

    it 'should see first 10 poems' do
      expect(page).to have_css('.poem', count: 10)
    end


    it 'Should have member details' do
      within(first('.poem')) do
        expect(page).to have_css('.title')
        expect(page).to have_css('.author')
        expect(page).to have_css('.poem-lines')
      end
    end
  end
end
