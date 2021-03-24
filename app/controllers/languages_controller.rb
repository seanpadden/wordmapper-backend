class LanguagesController < ApplicationController
  def index 
    languages = Language.all 
    # byebug
    # render json: languages
    render json: languages, except: [:created_at, :updated_at], include: {locations: {only: [:lat, :lng]}}
  end 

  def show 
    language = Language.find(params[:id])
    render json: language
  end 
end
