class AuthController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
      is_authenticated = user.authenticate(params[:password])


    if user && is_authenticated
      render json: {user: user, token: create_token(user.id)} 
    else
      render json: {errors: ["I don't believe you"]}, status: 422
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:username, :password)
  end

end