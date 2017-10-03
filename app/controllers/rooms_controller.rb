class RoomsController < ApplicationController
  
  def room_params
    params.require(:room).permit([:room_no, :premier, :en_suite, :capacity])
  end

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @residents = Room.find(params[:id]).residents
  end

  def create
    if Room.number_exists?(room_params[:room_no])
      flash[:notice] = 'Room already exists!'
      redirect_to rooms_new_path
    else
      Room.create(room_params)
      redirect_to rooms_path
    end
  end

  def destroy
    @room = Room.find(params[:id])
    if @room.destroy!
      redirect_to rooms_path
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    # checks if number exists and continue if unchanged
    if Room.number_exists?(room_params[:room_no]) && room_params[:room_no].to_i != @room.room_no
      flash[:notice] = 'Room already exists!'
      redirect_to room_edit_url(@room)
    elsif @room.update_attributes(room_params)
      redirect_to rooms_path
    end
  end
end
