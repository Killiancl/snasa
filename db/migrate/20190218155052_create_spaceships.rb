class CreateSpaceships < ActiveRecord::Migration[5.2]
  def change
    create_table :spaceships do |t|
      t.string :title
      t.string :description
      t.integer :seat
      t.integer :price_per_day
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
