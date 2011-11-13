class HabitsController < ApplicationController
  
  def index
    @current_user = current_user
    @habits = current_user.habits
  end
end
