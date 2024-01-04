class User < ApplicationRecord
  has_many :entitie
  has_many :groups
  validates :name, presence: true
end
