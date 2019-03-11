# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :handle
  attributes :games
  attributes :suggestions
end
