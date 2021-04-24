require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description", short_desc: "Test Short", demo_video: "httl:dfa.com") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end

  context "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_success
    end
  end

  context "GET #edit" do
    let!(:project) { Project.create(title: "Test title", description: "Test description", short_desc: "Test Short", demo_video: "httl:dfa.com") }
    it "returns a success response" do
      get :edit,  params: { id: project }
      expect(response).to be_success
    end
  end

end