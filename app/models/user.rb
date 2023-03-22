class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :monuments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :bookings_as_owner, through: :monuments, source: :bookings, class_name: "Booking"

  # validates :email, presence: true, uniqueness: true, length: { in: 5..100 }
  # validates :encrypted_password, presence: true, length: { in: 6..50 }
end
