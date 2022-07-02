class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation, :text, :created_at
end
