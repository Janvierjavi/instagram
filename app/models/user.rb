class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :Email,uniqueness: true, length: { maximum: 30 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :First_Name,  presence: true, length: { maximum: 19 }
  has_many :posts
  has_one :profile
  has_many :favorites, dependent: :destroy

end
