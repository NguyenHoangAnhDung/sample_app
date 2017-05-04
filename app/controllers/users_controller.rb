class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = "Welcome to sample app!"
      redirect_to @user
    else
      render "new"
    end
  end

  def show
    @user = User.find_by id: params[:id]
  end

  def index
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end
end
