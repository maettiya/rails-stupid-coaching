class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @reply = coach_answer(@question)
  end

  def coach_answer(your_message)
    if your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message.include?("I am going to work right now!")
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
