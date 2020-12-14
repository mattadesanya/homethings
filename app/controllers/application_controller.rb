class ApplicationController < ActionController::Base
  helper_method :current_user, :restrict_access

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def restrict_access
    unless current_user
      redirect_to '/auth/login'
    end
  end
end
