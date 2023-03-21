class MonumentsController < ApplicationController

  private

  def monument_params
    params.require(:monument).permit(:photo)
  end
end
