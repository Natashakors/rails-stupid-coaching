class QuestionsController < ApplicationController

  def question
  end

  def answer
    @question = params[:question]
    if @question.downcase == "i'm going to work"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
