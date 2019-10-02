class MapsController < ApplicationController

  def index
    maps = Map.all
    render json: maps, include: [:coordinates, :users] 
  end 

  def show 
    maps = Map.where(user_id: params[:user_id])
    render json: maps
  end

  def create 
    map = Map.create(map_params)
      coordinates = params["coordinates"].each do |coord|
        map.coordinates.create(coord.permit(:lat, :lng))
      end 
    if map.valid?
      render json: map
    else 
      render json message: 'failed to create map! are you logged in?'
    end 
  end 

  private 

  def map_params
    params.permit(:word_name, :etymology, :user_id)
  end

  def coordinate_params
    params.permit(:lat, :lng, :map_id)
  end 

end
