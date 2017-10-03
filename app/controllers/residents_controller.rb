class ResidentsController < ApplicationController
  def index
    @residents = Resident.all
  end

  def show
    @resident = Resident.find(params[:id])
  end

  def create
  end

  def new
    @rooms = Room.all
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
