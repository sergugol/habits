class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def index
    unless current_user
      render "splash", :layout => "splash"
    else
      redirect_to habits_path
    end
  end

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.where(:id => session[:user_id]).first
    else
      @current_user = nil
    end
  end
end
