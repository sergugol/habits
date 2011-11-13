class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def index
    @title = "Change(d)"
    if !current_user
      render "splash", :layout => "splash"
    else
      render "habits/index"
    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
