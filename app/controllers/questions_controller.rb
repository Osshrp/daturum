class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :delete]

  def index
    get_questions
  end

  def new
    @question = Question.new
    get_questions
  end

  def create
    # @question = Question.new question_params
    @question = current_user.questions.build question_params
    if @question.save
      redirect_to questions_path
    else
      get_questions
      render :new
    end
  end

  private

  def get_questions
    @questions = Question.all
  end

  def question_params
    # byebug
    params.require(:question).permit(:title, :body)
  end
end
