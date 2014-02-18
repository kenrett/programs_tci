require 'spec_helper'

describe 'A user visiting the homepage', js: true do
  let!(:program){ create(:program, title: 'TCI', subtitle: 'rocks') }

  it 'sees a list of all programs' do
    visit root_path
    expect(page).to have_content('TCI')
  end

  it 'can see links for more information' do
    visit root_path
    click_link('TCI')
    expect(page).to have_content('rocks')
  end

  it 'can create a new program' do
    visit root_path
    click_button('Create a new program')
    expect(page).to have_content('Create New Program')
  end 
end

describe 'A user visiting the show page', js: true do
  let(:program){ create(:program, title: 'TCI', subtitle: 'rocks') }

  it 'can return to the homepage' do
    visit program_path(program)
    click_link('Return Home')
    expect(page).to have_content('TCI')
  end

  it 'can edit current program' do
    visit program_path(program)
    click_link('Edit Program')
    expect(page).to have_content('Update Program')
  end
end
