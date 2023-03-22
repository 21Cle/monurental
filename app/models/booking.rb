class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :monument
  validates :arrival_date, presence: true
  validates :departure_date, presence: true, comparison: { greater_than: :arrival_date }
end
