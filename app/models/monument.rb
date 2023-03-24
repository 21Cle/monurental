class Monument < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  validates :name, :address, presence: true, uniqueness: true
  validates :rating, inclusion: { in: 0..5 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
