class MovePlayersController < ApplicationController

  # recebe os players e suas posições 
  # retransmite (broadcast) a posição de cada player para todos
  # inscritos no channel
  def create
    # TODO: verificar user antes de enviar a posição  
    ActionCable.server.broadcast('game_room_channel', params[:data])
 
    # MovePlayerWorker.perform_async("game_room_channel", params[:data][:player_name], 
    #   params[:data][:position_x],
    #   params[:data][:position_y])
    
    head :ok
  end
end