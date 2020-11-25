class Skill < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, uniqueness: { scope: :user_id }
  validates :price_per_day, presence: true, numericality: true
  validates :category, presence: true
end

  # Move description to the user table, don't use it in Skill
  # validates :description, presence: true
