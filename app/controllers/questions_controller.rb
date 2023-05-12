class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question].downcase
    if @question == 'i am going to work' || @question ==  "i'm going to work"
      @answer = "Great!"
      @photo = "great.gif"
      @link = "You did great, deserve to ask something more"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
      @photo = "silly.gif"
      @link = "How about to ask something useful? 😒"
    elsif @question == ''
      @answer = "I can't hear you!"
      @photo = "hear.gif"
      @link = "Don't be shy, ask something 😀"
    else
      @answer = "I don't care, get dressed and go to work!"
      @photo = "dont-care.gif"
      @link = "Don't you dare ask me something again! ☠️"
    end
  end
end
