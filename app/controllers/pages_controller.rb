class PagesController < ApplicationController
  def ask
  end
  def answer
    question = params[:question]
      if question.downcase.include?("i am going to work")
        answer_text = "Great!"
        answer_type = 1
      else
        silly = "Silly question,"
        care = "I don't care,"
        dressed = "get dressed and go to work!"
        answer_text = question.end_with?("?") ? "#{silly} #{dressed}" : "#{care} #{dressed}"
        answer_type = 2
      end
      @stupid_answer = [answer_text, answer_type]
  end
end
