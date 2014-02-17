require 'spec_helper'

describe 'a user visiting the homepage', js: true do
  let!(:program){ create(:program, title: 'TCI') }

  it 'sees a list of all programs' do
    visit root_path
    expect(page).to have_content('TCI')
  end

  it 'should be able to see links for more information' do
    visit root_path
    expect(page).to have_link('TCI')
  end 
end
  