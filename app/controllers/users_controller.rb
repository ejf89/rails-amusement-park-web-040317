class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params(:name, :password, :nausea, :happiness, :height, :tickets, :admin))
    if @user.save
      session[:user_id] = @user[:id]
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
    if logged_in?
      render :show
    else
      redirect_to root_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params(:name, :nausea, :happiness, :height, :tickets, :admin))
    redirect_to user_path(@user)
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

end
