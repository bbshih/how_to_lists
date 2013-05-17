require 'spec_helper'

feature 'Creating Guides' do
  before do
    visit '/'
    click_link 'New Guide'
  end

  scenario "can create a guide" do
    fill_in 'Name', :with => 'Pick a pineapple'
    click_button 'Create Guide'
    page.should have_content('Guide has been created')
  end

  scenario "cannot create a guide without a name" do
    click_button 'Create Guide'
    page.should have_content("Guide has not been created")
    page.should have_content("Name can't be blank")
  end
end
