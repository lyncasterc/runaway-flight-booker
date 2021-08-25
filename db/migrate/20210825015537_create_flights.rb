class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :start_id
      t.integer :finish_id
      t.datetime :start_date
      t.string :flight_duration

      t.timestamps
    end
  end
end
