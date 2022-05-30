class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(places_params)
    @place.save
    redirect_to place_path(@place)
  end

  private

  def places_params
    params.require(:place).permit(:price, :address, :size, :name, :description, :rating)
  end
end
