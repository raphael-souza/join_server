class UsersController < ApplicationController

  def index

  end

  def create 
    ActionCable.server.broadcast("game_room_1", {position: params[:user]})
    # user = User.new(user_params)
    # if user.save      
    #   serialized_data = ActiveModelSerializers::Adapter::Json.new(
    #     UserSerializer.new(user)
    #   ).serializable_hash
 
    #   ActionCable.server.broadcast('GameRoomChannel', {ssssss:'serialized_data'}) 
    #   head :ok
    # end

  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
