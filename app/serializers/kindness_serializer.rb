class KindnessSerializer < ActiveModel::Serializer
  attributes :id, :action, :category
  # has_many :users
  # has_many :user_kindnesses
end
