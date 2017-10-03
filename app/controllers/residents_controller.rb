class ResidentsController < ApplicationController
  def index
    @residents = Resident.all
  end

  def show
    @resident = Resident.find(params[:id])
  end

  def create
    Resident.create(params.require(:resident).permit([:first_name, :last_name, :dob, :room_id]))
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
