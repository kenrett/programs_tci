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

  it 'can delete current program' do
    visit program_path(program)
    click_link('Delete Program')
    expect(page).to_not have_content('TCI')
  end
end

describe 'A user visiting the new page', js: true do
  before :each do 
    visit new_program_path
  end
    
  it 'can create a new user' do
    fill_in 'Title', with: 'TCI'
    fill_in 'Subtitle', with: 'rocks'
    fill_in 'Code', with: '123456'
    click_button 'Submit'

    expect(page).to have_content('List of All Programs')
    expect(page).to have_content('TCI')
  end

  it 'cannot create a program with an incorrect code' do
    fill_in 'Code', with: '1234567'
    click_button 'Submit'
    expect(page).to have_content('Code is the wrong length (should be 6 characters)')
  end

  it 'cannot create a program without a title' do
    fill_in 'Subtitle', with: 'rocks'
    fill_in 'Code', with: '123456'
    click_button 'Submit'
    expect(page).to have_content("Title can't be blank")
  end

  it 'cannot create a program without a title' do
    fill_in 'Title', with: 'TCI'
    fill_in 'Code', with: '123456'
    click_button 'Submit'
    expect(page).to have_content("Subtitle can't be blank")
  end
end

describe 'A user visiting the edit page' do
  let(:program){ create(:program, title: 'TCI', subtitle: 'rocks') }

  before :each do 
    visit edit_program_path(program)
  end

  it "can edit a program's title" do
    fill_in 'Title', with: 'TeachTCI'
    click_button('Submit')
    expect(page).to have_content("TeachTCI")
  end
end
