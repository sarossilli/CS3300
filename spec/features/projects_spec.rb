require 'rails_helper'

RSpec.feature "Projects", type: :feature do
  context "Create new project" do
    before(:each) do
      visit new_project_path
      within("form") do
        fill_in "Title", with: "Test title"
        fill_in "Description", with: "Test"
        fill_in "Short desc", with: "Test"

      end
    end

    scenario "should be successful" do
      fill_in "Demo video", with: "Test"
      click_button "Create Project"
      expect(page).to have_content("Test title")
    end

    scenario "should fail" do
      click_button "Create Project"
      expect(page).to have_content("Demo video can't be blank")
    end


  end

  context "Update project" do
    let(:project) { Project.create(title: "Test title", description: "Test description", short_desc: "Test Short", demo_video: "httl:dfa.com") }
    before(:each) do
      visit edit_project_path(project)
    end

    scenario "should be successful" do
      within("form") do
        fill_in "Description", with: "New description content"
      end
      click_button "Update Project"
      expect(page).to have_content("New description content")
    end

    scenario "should fail" do
      within("form") do
        fill_in "Description", with: ""
      end
      click_button "Update Project"
      expect(page).to have_content("Description can't be blank")
    end
  end

end
