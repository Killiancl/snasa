class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :seat, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true

  def average_rating
    bookings_with_rating = bookings.where.not(rating: nil)
    return false if bookings_with_rating.empty?

    bookings_with_rating.average(:rating)
  end
end
