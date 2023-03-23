class ChangeBookingStatus < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :booking_status, from: nil, to: "pending"
  end
end
