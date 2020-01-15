class CocktailsController < ApplicationController
  # It will display from the newest to oldest created
  def index
    @cocktails = Cocktail.all.order('created_at DESC')
    if params[:query].present?
      @cocktails = Cocktail.where(name: params[:query])
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  # After saving the cocktail's name and photo it should go to doses/new,
  # so we can add doses and ingredients

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to new_cocktail_dose_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
