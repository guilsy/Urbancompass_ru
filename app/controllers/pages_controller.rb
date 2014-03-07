class PagesController < ApplicationController
  def home
  end

  def about
  end

  def map
  	@pins = Pin.all
  end
  def googlemaps
  	@pins = Pin.all
    @hash = Gmaps4rails.build_markers(@pins) do |pin, marker|
      marker.lat pin.latitude
      marker.lng pin.longitude
    end
  end

end
