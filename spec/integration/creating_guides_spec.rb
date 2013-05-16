require 'spec_helper'

feature 'Creating Guides' do
  scenario "can create a guide" do
    visit '/'
    click_link 'New Guide'
    fill_in 'Name', :with => 'Pick a pineapple'
    click_button 'Create Guide'
    page.should have_content('Guide has been created')
  end
end
