class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show]
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      redirect_to new_ingredient_path
    end
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:name])
  end

  def params_ingredient
    params.require(:ingredient).permit(:name)
  end
end
