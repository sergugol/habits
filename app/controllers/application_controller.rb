class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def index
    render "splash", :layout => "splash" unless current_user
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
