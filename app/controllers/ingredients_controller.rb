class IngredientsController < ApplicationController
  # GET /cocktails/:cocktail_id/doses/:dose_id/ingredient/new
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:dose_id])
    @ingredient = Ingredient.new(ingredient_params)
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:dose_id])
    @ingredient = Ingredient.new(ingredient_params)

    @ingredient.dose.cocktail = @cocktail
    if @ingredient.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
