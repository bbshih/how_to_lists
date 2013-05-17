require 'spec_helper'

feature "Viewing guides" do
  scenario "Listing all guides" do
    guide = Factory.create(:guide, :name => "Be Awesome")
    visit '/'
    click_link 'Be Awesome'
    page.current_url.should == guide_url(guide)
  end
end
