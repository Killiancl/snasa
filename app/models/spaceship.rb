class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :title, presence: true
  validates :seat, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
end
