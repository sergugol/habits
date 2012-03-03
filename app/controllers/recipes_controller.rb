class RecipesController < ApplicationController

  respond_to :json

  def create
    @recipe = Recipe.new({body: params[:body]})
    if current_user.recipes << @recipe
      render json: @recipe, status: :ok
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end
end
