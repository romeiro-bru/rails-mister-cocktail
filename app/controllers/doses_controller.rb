class DosesController < ApplicationController
  # GET /cocktails/:cocktail_id/doses/new
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  # POST /cocktails/:cocktail_id/doses
  def create
    # find the cocktail the dose is for
    @cocktail = Cocktail.find(params[:cocktail_id])
    # set a new empty dose
    @dose = Dose.new(dose_params)
    # assign newly dose to this cocktail: ASSOCIATION
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
