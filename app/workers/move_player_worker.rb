class MovePlayerWorker
  include Sidekiq::Worker
  sidekiq_options retry: true

  def perform(player_payload, room)
    # player_payload = {user_id: XX, position_x: XX, position_y: XX}
    ActionCable.server.broadcast(player_payload, room)
  end

end
