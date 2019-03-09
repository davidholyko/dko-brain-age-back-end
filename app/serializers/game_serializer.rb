class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :player
end
