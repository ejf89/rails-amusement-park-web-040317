class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params(:name, :password, :password_confirmation, :nausea, :happiness, :height, :tickets, :admin))
    session[:name] = @user[:name]
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find_by(params[:id])
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
