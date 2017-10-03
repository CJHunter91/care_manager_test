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
    @residents = Resident.all
    @rooms = Room.get_available_rooms(@residents)
  end

  def destroy
    @resident = Resident.find(params[:id])
    if @resident.destroy!
      redirect_to root_path 
    end
  end

  def edit
    @resident = Resident.find(params[:id])
    @rooms = Room.all
  end

  def update
    @resident = Resident.find(params[:id])
    if @resident.update_attributes(resident_params)
      redirect_to resident_path(@resident)
    end
  end
end
