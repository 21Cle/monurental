class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @bookings = current_user.bookings
    @owner_bookings = current_user.bookings_as_owner
    @owner_monuments = current_user.monuments
  end
end
