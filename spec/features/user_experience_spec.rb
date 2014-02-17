require 'spec_helper'

describe 'a user visiting the homepage', js: true do
  it 'sees a list of all programs' do
    program = create(:program, title: 'TCI')

    visit root_path

    expect(page).to have_content('TCI')
  end 
end
  