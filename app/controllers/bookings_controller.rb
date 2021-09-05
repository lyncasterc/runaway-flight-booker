class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @booking.flight = @flight
    passenger_count = params[:passenger_count].to_i

    passenger_count.times do 
      @booking.bookings_passengers.build.build_passenger
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @flight = Flight.find(params[:flight_id])
    @booking.flight = @flight
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: "Your flight has been booked!"}
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unproccessable_entity }
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, bookings_passengers_attributes: [passenger_attributes: [:name, :email]])
  end
end
