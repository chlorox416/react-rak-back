class Kindness < ApplicationRecord
    has_many :user_kindnesses
    has_many :users, through: :user_kindnesses
end
