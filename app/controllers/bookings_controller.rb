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

    @days = (@booking.departure_date - @booking.arrival_date).to_i
    @price = @days * @monument.price_per_night
    @booking.price = @price
    @booking.days = @days
    @booking.number_of_guests = @number_of_guests

    @booking.save

    redirect_to dashboard_path
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
    params.require(:booking).permit(:arrival_date, :departure_date, :user_request, :price, :number_of_guests)
  end
end
