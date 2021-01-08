require 'rails_helper'

RSpec.describe ToneService, type: :service do
  context 'when passed poem lines' do
    let(:poem_lines) { "Defrauded I a Butterfly --, The lawful Heir -- for Thee --" }

    it 'can return the tones' do
      result = ToneService.find_poem_tone(poem_lines)
      expect(result).to be_a(Hash)

      expect(result).to have_key(:document_tone)
      expect(result[:document_tone]).to be_a(Hash)

      expect(result[:document_tone]).to have_key(:tones)
      expect(result[:document_tone][:tones]).to be_a(Array)

      expect(result[:document_tone][:tones]).to have_key(:tone_name)
      expect(result[:document_tone][:tones][:tone_name]).to be_a(String)
    end
  end
end
