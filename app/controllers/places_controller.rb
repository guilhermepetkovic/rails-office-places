class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to place_path(@place), notice: "Office place successfully added"
    else
      render :new
    end
  end

  def show
    @place = Place.find(params[:id])
    @markers = { lat: @place.latitude, lng: @place.longitude }
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :price, :description, :photo)
  end
end
