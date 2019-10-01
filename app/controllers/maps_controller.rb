class MapsController < ApplicationController

  def index
    maps = Map.all
    render json: maps
  end 

  def show 
    maps = Map.where(user_id: params[:user_id])
    render json: maps
  end

  def create 
    map = Map.create(map_params)
    if map.valid?
      render json: map
    else 
      render json message: 'failed to create map! are you logged in?'
    end 
  end 

  private 

  def map_params
    params.permit(:word_name, :etymology, :lat, :lng, :user_id)
  end

end
