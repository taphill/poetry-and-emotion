require 'rails_helper'

RSpec.describe PoemService, type: :service do
  context 'When passed an author name' do
    it 'can return poems by author' do
      results = PoemService.find_poems_by_author('Emily')
      expect(results).to be_a(Array)

      first_result = results.first
      expect(first_result).to have_key(:title)
      expect(first_result[:title]).to be_a(String)

      expect(first_result).to have_key(:author)
      expect(first_result[:author]).to be_a(String)

      expect(first_result).to have_key(:lines)
      expect(first_result[:lines]).to be_a(Array)
    end
  end
end
