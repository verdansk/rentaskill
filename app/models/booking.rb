class Booking < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  enum status: { pending: 0, accepted: 1, declined: 2 }
end
