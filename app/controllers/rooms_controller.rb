class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def create
  end

  def new
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
