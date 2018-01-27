class UnitsController < ApplicationController
  def index
    @units = Unit.all
    render json: @units
  end

  def new
    @unit = Unit.new
    @units = Unit.all
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      redirect_to new_unit_path
    else
      render json: { errors: @unit.errors.full_messages }, status: :unprocessable_entity
    end
  end




  private


  def unit_params
    params.require(:unit).permit(:name, :cleaning_time)
  end


end