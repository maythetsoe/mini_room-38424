class MiniRoom < ApplicationRecord
  validates :title, presence: true
  validates :concept, presence: true
  validates :image, presence: true
  has_one_attached :image

  has_many :donation_rooms
  has_many :donations, through: :donation_rooms
  has_many :donations, dependent: :destroy
end
