class Match < ApplicationRecord

  def self.create(uuid) 
    match = Match.all 
    if match.blank?
      match = Match.new(uuid: uuid) 
      match.save
    else
      opponent =  match.take

      Game.start(uuid, opponent)
      # reseta as veriaveis do redis para iniciar um novo jogo
      match.destroy
    end
  end

end
