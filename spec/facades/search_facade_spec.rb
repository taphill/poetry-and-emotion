require 'rails_helper'

RSpec.describe SearchFacade, type: :facade do
  scenario '.nation_members(nation)' do
    members = SearchFacade.nation_members('fire nation')

    expect(members).to be_a(Array)
    expect(members.first).to be_a(NationMember)
    expect(members.first.name).to eq('Chan (Fire Nation admiral)')
  end
end
