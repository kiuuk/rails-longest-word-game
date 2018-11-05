class GamesController < ApplicationController
  def new
    @newArray = 10.times.map { ('A'..'Z').to_a[rand(26)] }
    # raise
  end

  def score
    @origin = params[:origin]
    @word = params[:word].upcase
    @word.split("").each do |letter|
      if @origin.include?(letter)
        @result = "true"
        dic
        raise
        break
      else
        @result = "false"
        raise
      end
    end
    # raise
  end

  def dic
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
  end
end
