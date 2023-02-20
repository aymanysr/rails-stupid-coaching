class QuestionsController < ApplicationController
  def home

  end
  def ask
  end

  def answer
    if params[:question]
      @questions = params[:question]
      if @questions == "I am going to work"
        @answer = "Great!"
      elsif  @questions.ends_with?("?")
        @answer = "Silly question, get dressed and go to work!."
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = "the conversation is empty!"
    end
  end
end
