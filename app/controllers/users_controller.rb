class UsersController < ApplicationController

  def index

  end

  def create 
    ActionCable.server.broadcast("game_room_1", params[:data])
    
    # user = User.new(user_params)
    
    # if user.save      
    #   serialized_data = ActiveModelSerializers::Adapter::Json.new(
    #     UserSerializer.new(user)
    #   ).serializable_hash
 
    #   ActionCable.server.broadcast('GameRoomChannel', {ssssss:'serialized_data'}) 
    # end
    
    head :ok
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
