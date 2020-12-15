class User < ApplicationRecord
    has_many :user_kindnesses
    has_many :kindnesses, through: :user_kindnesses
end
