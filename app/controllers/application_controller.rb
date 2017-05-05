class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    if User.find(params[:id])
      current_user = User.find(params[:id])
    else
      redirect_to '/signup'
    end
  end

  def logged_in?
    !!session[:user_id]
  end

end
