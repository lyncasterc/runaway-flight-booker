class FlightsController < ApplicationController

  def index
    @airports = Airport.all
    @dates = Flight.pluck(:start_date).uniq
    @search = params
    @passenger_count = params[:passenger_count]
    
    if @search.present?
      @flights = Flight.where(start_id: @search[:from_airport], 
                              finish_id: @search[:to_airport], 
                              start_date: @search[:start_date])
    end
  end

  private

  # def flights_params
  #   params.require(:flight).permit(:airport)
  # end
end
