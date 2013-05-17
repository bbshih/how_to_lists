require 'spec_helper'

feature "Creating Actions" do
  before do
    Factory(:guide, :name => "Be Awesome")
    visit "/"
    click_link "Be Awesome"
    click_link "New Action"
  end

  scenario "Creating an action" do
    fill_in "Description", :with => "Learn Ruby"
    click_button "Create Action"
    page.should have_content("Action has been created.")
  end

  scenario "Creating an action without valid attribute fails" do
    click_button "Create Action"
    page.should have_content("Action has not been created.")
    page.should have_content("Description can't be blank")
  end
end

