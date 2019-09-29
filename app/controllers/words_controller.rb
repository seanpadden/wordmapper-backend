class WordsController < ApplicationController

  def index 
    words = Word.all 
    render json: words
  end 

  def create 
    word = Word.create(word_params)
    render json: {word_name: word}, status: :created 

  end

  private 

  def word_params
    params.permit(:word_name)
  end
  
  
end
