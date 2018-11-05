require "open-uri"

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
        dictionary
        # raise
        break
      else
        @display = "Out of grid"
      end
    end
    # raise
  end

  def dictionary
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    @dic_hash = JSON.parse(open(url).read)
    if @dic_hash["found"] == true
      @display = "Valid"
    else
      @display = "Not a English word"
    end
  end
end
