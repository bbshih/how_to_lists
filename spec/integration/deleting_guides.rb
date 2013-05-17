require 'spec_helper'

feature 'Deleting guides' do
  scenario 'Deleting a guide' do
    Factory(:guide, :name => 'Be Awesome')
    visit '/'
    click_link 'Be Awesome'
    click_link 'Delete Guide'
    page.should have_content('Guide has been deleted.')

    visit '/'
    page.should_not have_content('Be Awesome')
  end
end


