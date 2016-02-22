class Magic8Controller < ApplicationController
  
  def play_magic8
    answerArray = ["Yup!","Fuhgeddaboudit", "Maybe", "Ask: what would your mother do?", "Ask: what would an Australian do, then do the opposite", "Your answer here"]

    if !params[:question].nil?
      num = Random.new
      a = num.rand(answerArray.length)
      flash.now[:alert] = answerArray[a]
    end
  end
  
end
