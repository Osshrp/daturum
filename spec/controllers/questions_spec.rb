require "rails_helper"
require "spec_helper"


describe QuestionsController, type: :request do

  describe "GET #index" do
    # let!(:posts) { FactoryGirl.create_list(:post, 2) }
    before do
      get questions_url
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      sign_in user
    end


    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end
    # byebug
    # it "populates an array of all questions" do
    #   expect(response.body).to eq(questions)
    # end
  end

  describe "POST #create" do
      it "saves the new question in the database" do
        post questions_url, params: { question: FactoryGirl.attributes_for(:question) }
        expect(response.status).to eq(302)
      end
    end
end