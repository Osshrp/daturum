class AnswersController < ApplicationController
  def new
    @question = find_question
    @answer = @question.answers.build
    # byebug
  end

  def show

  end

  def create
    # user = current_user
    byebug
    @answer = find_question.answers.build(answer_params, user_id: current_user.id)
    if @answer.save
      redirect_to questions_path
    else
      # render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end

  def find_question
    Question.find params[:question_id]
  end
end
