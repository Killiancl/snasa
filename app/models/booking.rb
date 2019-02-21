class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :spaceship
  validate :possible_in_datetime_range

  def possible_in_datetime_range
    return unless start_at && end_at
    range = start_at..end_at
    errors.add(:booking, 'Spaceship unavailable during that time') unless spaceship.available?(range)
  end

    private

  def self.overlapping(range)
    return all if range.blank?
      where(<<~SQL, range_start: range.first, range_end: range.last)
        (start_at BETWEEN :range_start AND :range_end)
        OR (end_at BETWEEN :range_start AND :range_end)
        OR (start_at < :range_start AND :range_end < end_at)
      SQL
  end
end
