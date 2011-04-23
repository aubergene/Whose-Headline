class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user, :admin_user

  private

  def current_user
    @current_user ||= User.where(:id => session[:user_id]).first if session[:user_id]
  end

  def admin_user
    @current_user && @current_user.admin
  end

  def require_user
    logger.debug "ApplicationController::require_user"
    unless current_user
      flash[:notice] = "You must be logged in to access this page"
      redirect_to root_path
      return false
    end
  end


end
