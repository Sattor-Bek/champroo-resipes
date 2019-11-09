class QuantitiesController < ApplicationController
  before_action :set_quantity, only: [:destroy]
  before_action :set_recipe, only: [:create, :new]

  def new
    @quantity = Quantity.new
    @quantity.recipe = @recipe
  end

  def create
    @quantity = Quantity.new(quantity_params)
    @quantity.recipe = @recipe
    if @quantity.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def destroy
    @quantity.destroy
    redirect_to recipes_path(@quantity.recipe)
  end

  private

  def quantity_params
    params.require(:quantity).permit(:description, :ingredient_id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def set_quantity
    @quantity = quantity.find(params[:id])
  end
end
