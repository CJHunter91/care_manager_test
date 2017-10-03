class ResidentsController < ApplicationController
  
  def resident_params
    params.require(:resident).permit([:first_name, :last_name, :dob, :room_id])
  end

  def index
    @residents = Resident.all
  end

  def show
    @resident = Resident.find(params[:id])
  end

  def create
    Resident.create(resident_params)
    redirect_to root_path
  end

  def new
    @rooms = Room.all
  end

  def destroy
  end

  def edit
    @resident = Resident.find(params[:id])
    @rooms = Room.all
  end

  def update
  end
end
