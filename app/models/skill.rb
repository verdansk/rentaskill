class Skill < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :description, presence: true
  validates :name, presence: true
  validates :price_per_day, presence: true, numericality: true
  validates :category, presence: true
end
