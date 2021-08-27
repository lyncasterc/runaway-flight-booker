class FlightsController < ApplicationController

  def index
    @airports = Airport.all
    @dates = Flight.all.map(&:start_date).uniq
  end

  private

  def flights_params
    params.require(:flight).permit(:airport)
  end
end
