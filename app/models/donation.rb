class Donation < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :delivery_id, presence: true
  validates :region_id, presence: true
  validates :ship_id, presence: true
  validates :image, presence: true
  validates :size, presence: true

  belongs_to :user
  # has_one :order
  has_one_attached :image
  belongs_to :mini_room

  has_many :donation_rooms
  has_many :donations, through: :donation_rooms

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery
  belongs_to :region
  belongs_to :ship
  belongs_to :size

  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :delivery_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :region_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :ship_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :size_id, numericality: { other_than: 1 , message: "can't be blank"}
end
