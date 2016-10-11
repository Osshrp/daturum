class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    # byebug
  end

  def show

  end

  def create
    @answer = current_user.answers.build question_params
    if @answer.save
      redirect_to questions_path
    else
      render :new
    end
  end

  private

  def question_params
    params.permit(:question_id)
  end
end
