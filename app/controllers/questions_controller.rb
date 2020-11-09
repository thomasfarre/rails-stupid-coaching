class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:answer].end_with?('?')
      @result = "Silly question, get dressed and go to work!"
    elsif params[:answer].downcase == "i am going to work"
      @result = "Great!"
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
