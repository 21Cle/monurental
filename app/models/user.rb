class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
<<<<<<< HEAD
  has_many :bookings_as_owner, through: :monuments, source: :bookings, class_name: "Booking"
=======
  has_many :bookings_as_owner, through: :monuments, source: :bookings, class_name: 'Booking'
>>>>>>> b9149b24ff6495489bbc1251fd4b55d9d330d397
  has_many :monuments
end
