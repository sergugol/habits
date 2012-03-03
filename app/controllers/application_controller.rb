class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def index
    render "splash", layout: "splash" unless current_user
    if current_user
      @recipes = current_user.recipes
    end
  end

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end
