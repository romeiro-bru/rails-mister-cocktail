class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:edit, :update, :show]
  def index
    @cocktails = Cocktail.all
    if params[:query].present?
      @cocktails = Cocktail.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @cocktails = Cocktail.all.order('created_at DESC')
    end
  end

  def show
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

  def edit
  end

  def update
    @cocktail.update(cocktail_params)

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to cocktais_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
