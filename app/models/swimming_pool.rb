class SwimmingPool < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :name, :address, :capacity, :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :availability, inclusion: { in: [true, false] }
end
