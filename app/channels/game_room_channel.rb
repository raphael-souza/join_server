class GameRoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "game_room_#{params[:room]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    debugger  
    ActionCable.server.broadcast("game_room_1", data)
  end
end
