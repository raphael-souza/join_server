class MovePlayerWorker
  include Sidekiq::Worker
  sidekiq_options retry: true

  def perform(room, player, x, y)
    player_payload = {player_name: player, position_x: x, position_y: y}
   
    ActionCable.server.broadcast(room, player_payload)
  end

end
