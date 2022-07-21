class GameRoomChannel < ApplicationCable::Channel
  def subscribed
    # user_params = params[:data]
    
    # user = User.find_or_create_by(user_params) 
    # ActionCable.server.broadcast("game_room_#{user.id}", "#{user.name} Acabou de entrar na sala!")
    
    # ActionCable.server.broadcast("game_room_1", "#{user.name} Acabou de entrar na sala!")
    
    stream_from "game_room_channel"
  end

  def unsubscribed 
    User.find_by(name:  params[:data][:name]).destroy
    # Any cleanup needed when channel is unsubscribed
  end

  # def receive(data)
  #   debugger  
  #   ActionCable.server.broadcast("game_room_1", data)
  # end
end
