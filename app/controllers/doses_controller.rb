class DosesController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
