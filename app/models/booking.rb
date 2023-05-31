class Booking < ApplicationRecord
  belongs_to :skill
  belongs_to :user

  validates :booking_date, presence: true
end
