class Reservation < ApplicationRecord
  validates :start_date, presence: true, message: {"please give a start date"}
  validates :end_date, presence: true, message: {"please give an end date"}
  
  belongs_to :guest, class_name: "User"
  belongs_to :listing
end
