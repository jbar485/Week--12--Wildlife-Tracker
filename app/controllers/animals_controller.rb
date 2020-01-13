class AnimalsController < ApplicationController

  # Code for listing all animals
  def index
    @animals = Animal.all
    render :index
  end

  # Code for new animal form
  def new
    @animal = Animal.new
    render :new
  end

  # Code for creating a new animal
  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirecto_to animals_path
    else
      render :new
    end
  end

  # Code for edit animal form
  def edit
    @animal = Animal.find(params[:id])
    render :edit
  end

  # Code for showing a single animal
  def show
    @animal = Animal.find(params[:id])
    render :show
  end

  # Code for updating an animal
  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      redirecto_to animals_path
    else
      render :edit
    end
  end

  # Code for deleting an animal
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirecto_to animals_path
  end

  private
    def animal_params
      params.require(:animal).permit(:species, :name)
    end

end
