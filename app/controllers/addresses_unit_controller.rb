class AddressesUnitController < ApplicationController
  def index
    @address_unit = AddressesUnit.all.as_json(include: [:address, :unit])
    render json: @address_unit
  end

end