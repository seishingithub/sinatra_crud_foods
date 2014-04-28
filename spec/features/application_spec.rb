require 'spec_helper'
require 'capybara/rspec'

Capybara.app = Application

feature 'Homepage' do
  scenario 'Creating foods' do
    visit '/'

    click_on 'Foods'
    click_on 'Add Food'
    fill_in 'name', with: 'pizza'
    fill_in 'description', with: 'Italian'
    fill_in 'rating', with: 5
    click_on 'Create Food'
    expect(page).to have_content 'pizza'
  end

  scenario 'Show food' do
    visit '/'
    click_on 'Foods'
    click_on 'Add Food'
    fill_in 'name', with: 'pizza'
    fill_in 'description', with: 'Italian'
    fill_in 'rating', with: 5
    click_on 'Create Food'
    click_on 'pizza'
    expect(page).to have_content 'pizza'
    expect(page).to have_content 'Italian'
    expect(page).to have_content 5
  end
end