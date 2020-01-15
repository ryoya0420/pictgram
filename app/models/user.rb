class User < ApplicationRecord
  validates :name,presence: true
  validates :email,presence: true
  validates :name,length: { minimum: 8, maximum: 32}
  validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :name, length: { maximum: 15 }
  has_secure_password
end
