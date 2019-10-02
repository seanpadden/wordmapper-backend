class CoordinatesController < ApplicationController

  def index 
    coordinates = Coordinate.all 
    render json: coordinates 
  end 

  def show 
    coordinate = Coordinate.find(params[:id])
    render json: coordinate 
  end 
  
end
