class Listing < ApplicationRecord
  validates :available_beds, format: { with: /([1-9]|[1-9]\d{1,5}|1000000)/, message: "Positive number only"}
  validates :price, format: { with: /([1-9]|[1-9]\d{1,5}|1000000)/, message: "Positive number only" }
  validates :description, presence: true, length: { maximum: 300 }
  validates :welcome_message, presence: true

  has_many :reservations
  belongs_to :admin, class_name: "User"
  belongs_to :city
end
