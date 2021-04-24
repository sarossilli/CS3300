require "rails_helper"

RSpec.describe Project, type: :model do
    context "validations tests" do
      it "ensures the title is present" do
        project = Project.new(description: "Some description content goes here", short_desc: "Short desc", demo_video: "dhealf.com")
        expect(project.valid?).to eq(false)
      end
  
      it "ensures the description is present" do
        project = Project.new(title: "Title", short_desc: "Short desc", demo_video: "dhealf.com")
        expect(project.valid?).to eq(false)
      end

      it "ensures the shortDescription is present" do
        project = Project.new(title: "Title", description: "Some description content goes here", demo_video: "dhealf.com")
        expect(project.valid?).to eq(false)
      end

      it "ensures the videoDemo is present" do
        project = Project.new(title: "Title", description: "Some description content goes here", short_desc: "Short desc")
        expect(project.valid?).to eq(false)
      end
      
      it "ensures valid projects are valid" do
        project = Project.new(title: "Title", description: "Some description content goes here", short_desc: "Short desc", demo_video: "dhealf.com")
        expect(project.valid?).to eq(true)
      end

      it "should be able to save project" do
        project = Project.new(title: "Title", description: "Some description content goes here", short_desc: "Short desc", demo_video: "dhealf.com")
        expect(project.save).to eq(true)
      end

    end

    context "scopes tests" do
        let(:params) { { title: "Title", description: "Some description content goes here", short_desc: "Short desc", demo_video: "dhealf.com"} }
        before(:each) do
          Project.create(params)
          Project.create(params)
          Project.create(params)
        end
    
        it "should return all projects" do
          expect(Project.count).to eq(3)
        end
  
    end
end
  