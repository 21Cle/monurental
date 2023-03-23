class BookingsController < ApplicationController
  def new
    @monument = Monument.find(params[:id])
    @booking = Booking.new
  end

  def create
    @monument = Monument.find(params[:monument_id])
    @booking = Booking.new(booking_params)
    @booking.monument = @monument
    @booking.user = current_user
    @booking.save

    redirect_to dashboard_path
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: 'accepted')
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: 'declined')
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date, :user_request, :booking_status)
  end
end
