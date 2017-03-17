class AirportsController < ApplicationController
  def nearby
    latitude = params[:latitude].to_i
    longitude = params[:longitude].to_i
    radius = params[:radius].to_i

    @airports = Airport.nearby(latitude, longitude, radius)
    
    render :nearby, status: :ok
  end
end
