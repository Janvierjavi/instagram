class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :favorites, dependent: :destroy
  validates :content, presence: true 
  validates :image, presence: true 
  has_many :profiles

end
