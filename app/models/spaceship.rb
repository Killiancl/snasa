class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :description, presence: true
  validates :seat, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
end
