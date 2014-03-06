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
  end

end
