class User < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :email, presence: true
  validates :bio, presence: true
  validates :name, format: { without: /\s/ }
end
