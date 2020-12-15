class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number
  # has_many :kindnesses
  # has_many :user_kindnesses
end
