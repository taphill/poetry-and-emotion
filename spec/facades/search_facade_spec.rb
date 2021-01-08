require 'rails_helper'

RSpec.describe SearchFacade, type: :facade do
  scenario '.poems(author)' do
    poems = SearchFacade.poems('Emily')

    expect(poems).to be_a(Array)
    expect(poems.first).to be_a(Poem)
    expect(poems.first.title).to eq('Not at Home to Callers')
    expect(poems.first.author).to eq('Emily Dickinson')
    expect(poems.first.lines).to be_a(Array)
  end
end
