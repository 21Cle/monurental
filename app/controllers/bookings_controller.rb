class BookingsController < ApplicationController

  def new
    @monument = Monument.find(params[:id])
    @booking = Booking.new
  end

  def create
    @monument = Monument.find(params[:monument_id])
    @booking = Booking.new(booking_params)
    @booking.monument = @monument
    @booking.save
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = 'accepted'
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = 'declined'
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date, :user_request)
  end
end
