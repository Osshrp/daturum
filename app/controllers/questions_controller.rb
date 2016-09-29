class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    # render @questions
  end
end
