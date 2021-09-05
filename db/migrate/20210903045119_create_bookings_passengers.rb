class CreateBookingsPassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings_passengers do |t|
      t.integer :booking_id
      t.integer :passenger_id

      t.timestamps
    end
  end
end
