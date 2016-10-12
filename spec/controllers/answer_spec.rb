require "rails_helper"
require "spec_helper"


describe AnswersController do

  describe "POST #create" do
    let(:user) { FactoryGirl.create :user }
    let(:question) { FactoryGirl.create :question }

    context "with valid attributes" do

      it "saves the new answer in the database" do
        # expect { post :create, answer: FactoryGirl.attributes_for(:answer), question_id: question }.to change(Answer, :count).by(1)
      end
      # byebug
      # it "populates an array of all questions" do
      #   expect(response.body).to eq(questions)
      # end
    end

  end
end