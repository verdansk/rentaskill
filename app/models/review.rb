class Review < ApplicationRecord
  belongs_to :user
  validates :rating, presence: true, numericality: true, inclusion: { in: (1..5) }
  validates :description, presence: true
end
