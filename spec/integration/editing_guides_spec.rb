require 'spec_helper'

feature 'Editing guides' do
  before do
    Factory(:guide, :name => 'Be Awesome')
    visit '/'
    click_link 'Be Awesome'
    click_link 'Edit Guide'
  end


  scenario 'Updating a guide' do
    fill_in 'Name', :with => "Be Tubular"
    click_button 'Update Guide'
    page.should have_content('Guide has been updated.')
  end

  scenario 'Updating a guide with no name' do
    fill_in 'Name', :with => ''
    click_button 'Update Guide'
    page.should have_content('Guide has not been updated.')
  end
end
