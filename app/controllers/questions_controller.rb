class QuestionsController < ApplicationController
  def form
  end

  def answer
    @response = params[:question]
    case @response
    when "I am going to work"
      @answer = "Great!"
    when @response.include?('?')
      @answer = "Silly question, get dressed and go to work"
    else
     @answer = "I don't care, get dressed and go to work"
    end
  end

end
