class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :arrival_date
      t.date :departure_date
      t.integer :price
      t.string :booking_status
      t.text :user_request
      t.references :user, null: false, foreign_key: true
      t.references :monument, null: false, foreign_key: true

      t.timestamps
    end
  end
end
