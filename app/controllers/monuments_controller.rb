class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
  end

  def show
    @monument = Monument.find(params[:id])
  end

  private

  def monument_params
    params.require(:monument).permit(:photo)
  end
end
