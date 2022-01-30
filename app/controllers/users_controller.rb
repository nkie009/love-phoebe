class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    User.create user_params
    redirect_to users_path
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  @user = User.find params[:id]
  end

  def update  
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path(params[:id])
  end


  private
  def user_params
    params.require(:user).permit(:name, :password, :email, :address, :phone)
  end



end#of class