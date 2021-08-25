class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: :start_id, class_name: 'Airport'
  belongs_to :to_airport, foreign_key: :finish_id, class_name: 'Airport'
end
