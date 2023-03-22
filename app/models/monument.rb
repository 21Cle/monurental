class Monument < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  validates :name, :address, presence: true, uniqueness: true
  validates :price_per_night, :capacity, :description, :utilities, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
