class KindnessSerializer < ActiveModel::Serializer
  attributes :id, :act, :category
  # has_many :users
  # has_many :user_kindnesses
end
