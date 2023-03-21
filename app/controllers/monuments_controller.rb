class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
  end

  def show
    @monument = Monument.find(params[:id])
  end
end
