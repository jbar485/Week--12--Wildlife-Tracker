class AnimalsController < ApplicationController

  # Code for listing all albums
  def index
  end

  # Code for new album form
  def new
  end

  # Code for creating a new album
  def create
  end

  # Code for edit album form
  def edit
  end

  # Code for showing a single album
  def show
  end

  # Code for updating an album
  def update
  end

  # Code for deleting an album
  def destroy
  end

  private
    def animal_params
      params.require(:animal).permit(:species, :name)
    end

end
