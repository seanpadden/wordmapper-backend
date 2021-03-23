class LanguagesController < ApplicationController
  def index 
    languages = Language.all 
    render json: languages
  end 

  def show 
    language = Language.find(params[:id])
    render json: language
  end 
end
