# frozen_string_literal: true

class SuggestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_info

  def user_info
    object.user[:handle]
  end
end
