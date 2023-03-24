class MonumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @monuments = Monument.excluding(current_user.monuments)
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

  def new
    @monument = Monument.new
  end

  def create
    @monument = Monument.new(monument_params)
    @monument.rating = rand(0..5)
    @monument.user_id = current_user.id
    if @monument.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def monument_params
    params.require(:monument).permit(:photo, :name, :address, :price_per_night, :capacity, :description, :utilities, :theme, :user_id)
  end
end
