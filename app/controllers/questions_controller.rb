class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "hello"
      @answer = "what's up"
    elsif @question == "what time is it?"
      @answer = Time.now.strftime("%I:%M%P")
    elsif @question == "I'm going to work"
      @answer = "Great!"
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.include?("banana")
      @answer = "I don't give a sh*t. Get dressed and go to trabajo!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
