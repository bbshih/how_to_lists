require 'spec_helper'

feature 'Editing guides' do
  scenario 'Updating a guide' do
    Factory(:guide, :name => 'Be Awesome')
    visit '/'
    click_link 'Be Awesome'
    click_link 'Edit Guide'
    fill_in 'Name', :with => "Be Tubular"
    click_button 'Update Guide'
    page.should have_content('Guide has been updated.')
  end
end
