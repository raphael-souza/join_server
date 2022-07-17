class ChatMessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from esperar receber uma string como argumento, enquanto stream_for espera um objeto do modelo.
    conversation = Conversation.find(params[:conversation])
    stream_for conversation
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

end
