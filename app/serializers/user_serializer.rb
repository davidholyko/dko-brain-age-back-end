# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  # attributes :id
  # attributes :email
  attributes :handle, :games
end
