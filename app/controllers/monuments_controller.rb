class MonumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @monuments = Monument.all
    @markers = @monuments.geocoded.map do |monument|
      {
        lat: monument.latitude,
        lng: monument.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { monument: monument })
      }
    end
  end

  def show
    @monument = Monument.find(params[:id])
    @booking = Booking.new
  end

  private

  def monument_params
    params.require(:monument).permit(:photo)
  end
end
