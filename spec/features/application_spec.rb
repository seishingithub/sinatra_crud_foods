require 'spec_helper'
require 'capybara/rspec'

Capybara.app = Application

feature 'Homepage' do
  scenario 'Shows the Foods' do
    visit '/'

    click_on 'Foods'
    click_on 'Add Food'
    fill_in 'name', with: 'pizza'
    fill_in 'description', with: 'Italian'
    fill_in 'rating', with: 5
    click_on 'Create Food'
    expect(page).to have_content 'pizza'


  end
end