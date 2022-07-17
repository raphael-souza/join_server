class MovePlayersController < ApplicationController

  # recebe os players e suas posições 
  # retransmite a posição de cada player para todos
  # inscritos no channel
  def create
    # TODO: verificar user antes de enviar a posição
    MovePlayerWorker.perform_async(params[:data], "game_room_1")
    
    # user = User.new(user_params)
    
    head :ok
  end
end