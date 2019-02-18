class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :total_price
      t.text :review
      t.integer :rating
      t.date :start_at
      t.date :end_at
      t.references :user, foreign_key: true
      t.references :spaceship, foreign_key: true

      t.timestamps
    end
  end
end
