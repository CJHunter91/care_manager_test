class RoomsController < ApplicationController
  
  def room_params
    params.require(:room).permit([:room_no, :premier, :en_suite, :capacity])
  end

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def create
    Room.create(room_params)
    redirect_to action: 'index'
  end

  def new
  end

  def destroy
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update_attributes(room_params)
      redirect_to rooms_path
    end
  end
end
