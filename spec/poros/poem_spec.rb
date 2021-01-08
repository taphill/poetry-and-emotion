require 'rails_helper'

RSpec.describe Poem, type: :poro do
  context 'When the object exists' do
    let(:attr) do
      {
        title: "Not at Home to Callers",
        author: "Emily Dickinson",
        lines: [
          "Not at Home to Callers",
          "Says the Naked Tree --",
          "Bonnet due in April --",
          "Wishing you Good Day --"
        ]
      }
    end

    let(:poem) { Poem.new(attr) }

    it { expect(poem).to be_a(Poem) }
    it { expect(poem.title).to eq('Not at Home to Callers') }
    it { expect(poem.author).to eq('Emily Dickinson') }
    it { expect(poem.lines).to be_a(Array) } 
  end
end
