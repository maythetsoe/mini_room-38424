class MiniRoomsController < ApplicationController
  def index
    @mini_rooms = MiniRoom.all
    @user = User.new
  end

  def new
    @mini_room = MiniRoom.new
  end
  
  def create
    @mini_room = MiniRoom.new(mini_room_params)
    if @mini_room.save  
    redirect_to root_path
    else
      render :new
    end
  end

  def show
    @mini_room = MiniRoom.find(params[:id])
    @donation = Donation.new
    @donations = @mini_room.donations.includes(:user)
  end

  def edit
      @mini_room = MiniRoom.find(params[:id])
      if user_signed_in? && current_user.id == @mini_room.user_id 
        redirect_to mini_room_path  unless current_user.id == @mini_room.user_id
      else
        redirect_to root_path
      end
  end

  def update
    @mini_room = MiniRoom.find(params[:id])
   if @mini_room.update(mini_room_params)
    redirect_to mini_room_path
   else
    render :edit
   end
  end

  def destroy
    mini_room = MiniRoom.find(params[:id])
    if mini_room.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def mini_room_params
    params.require(:mini_room).permit(:title, :concept, :image).merge(user_id: current_user.id)
  end
end
