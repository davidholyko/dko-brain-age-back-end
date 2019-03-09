# frozen_string_literal: true

class GameSerializer < ActiveModel::Serializer
  attributes :id, :score, :player, :created_at, :user_info

  def user_info
    object.user[:handle]
  end
end
