require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_css("div",:class => "row")
  end
  scenario "The visitor should see navbar" do
    visit root_path
    expect(page).to have_xpath("//nav")
  end
end