class GameRoomChannel < ApplicationCable::Channel
  def subscribed
    user_params = params[:data]
    stream_from "game_room_#{user_params}"
 
    user = User.find_or_create_by(user_params) 
    ActionCable.server.broadcast("game_room_#{user.id}", "#{user.name} Acabou de entrar na sala!")

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    debugger  
    ActionCable.server.broadcast("game_room_1", data)
  end
end
