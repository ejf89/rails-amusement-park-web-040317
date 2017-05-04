class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    session[:name] = @user[:name]
    if @user.save
      redirect_to "/users/#{@user.id}"
    else
      render :new
    end
  end

  def show
    @user = User.find_by(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :nausea, :happiness, :height, :tickets, :admin)
  end

end
