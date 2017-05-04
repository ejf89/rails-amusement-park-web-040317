class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    @user.save
    binding.pry
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find_by(params[:user][:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :nausea, :happiness, :height, :tickets, :admin)
  end

end
