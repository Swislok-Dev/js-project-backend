class UsersController < ApplicationController

  def index
    user = User.all
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else
      render json: { message: "No users found" }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password_digest, :password_confirmation)
  end

end
