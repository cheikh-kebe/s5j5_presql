class User < ApplicationRecord
  validates :email,presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Valid email adress please" }
  validates :phone_number,
    presence: true,
    uniqueness: true
  validates :description, length: { maximum: 200 }

  has_many :guest_reservations, through: :reservations, foreign_key: 'guest_id', class_name: "Reservation"
  has_many :admin_listings, through: :reservations, foreign_key: 'admin_id', class_name: "Reservation"
end
