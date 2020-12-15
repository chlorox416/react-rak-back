class UserKindnessSerializer < ActiveModel::Serializer
  attributes :id, :date, :note, :completion
  has_one :user
  has_one :kindness
end
git