require "rails_helper"

describe QuestionsController, type: :request do

  describe "GET #index" do
    # let!(:posts) { FactoryGirl.create_list(:post, 2) }
    before { get questions_url }

    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end

    # it "populates an array of all questions" do
    #   expect(response.body).to eq(posts)
    # end
  end
end