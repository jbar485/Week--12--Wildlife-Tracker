class SightingsController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]

  def new
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new
    render :new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new(sighting_params)
    if @sighting.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
    weather_object = Weather.new(@sighting.zip)
    @weather = weather_object.get_weather()
    render :show
  end

  def edit
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
    render :edit
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(sighting_params)
      redirect_to animal_path(@sighting.animal)
    else
      render :edit
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to animal_path(@sighting.animal)
  end

  # Other controller actions go here.
  private
  def sighting_params
    params.require(:sighting).permit(:longitude, :latitude, :location, :zip)
  end

end
