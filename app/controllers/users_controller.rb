class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create, :index]

  def index 
    users = User.all
    render json: users 
  end

  def profile
    render json: current_user
  end
    
  def create
    user = User.create(user_params)
    if user.valid?
      token = create_token({ user_id: user.id })
      render json: {user: user, jwt: token}, status: :created 
    else
      render json: { message: 'failed to create user' }, status: :unauthorized
    end
  end

  private 

  def user_params
    params.permit(:username, :password)
  end
  
end