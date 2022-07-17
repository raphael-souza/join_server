module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # identified_by :uuid

    def connect 
      # ActionCable.server.broadcast('game_room_1', "#{user} Acabou de conectar na sala!")
      # puts("********** conectado !")
      # self.uuid = SecureRandom.urlsafe_base64
    end
  
  end
end
