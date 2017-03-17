class AirportsController < ApplicationController
  def nearby
    latitude = params[:latitude]
    longitude = params[:longitude]
    radius = params[:radius]

    if latitude && longitude && radius
      @airports = Airport.nearby(latitude, longitude, radius)
      render :nearby, status: :ok
    else
      render :error, status: :bad_request
    end
  end

  private

  def nearby_params
    params.permit(:format, :latitude, :longitude, :radius)
  end
end
