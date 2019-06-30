class SwimmingPool < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :name, :address, :capacity, :price, presence: true
  validates :price, :length, :width, :capacity, numericality: { only_integer: true }
  validates :availability, inclusion: { in: [true, false] }
  validates :name, length: { maximum: 100 }
  validates :description, length: { maximum: 1200 }
  validates :price, :capacity, :length, :width, length: { maximum: 3 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
