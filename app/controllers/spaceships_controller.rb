class SpaceshipsController < ApplicationController
  def index
    @spaceships = Spaceship.all
  end

  def show
    @spaceship = Spaceship.where.not(latitude: nil, longitude: nil) && Spaceship.find(params[:id])
    @markers = [{
      lng: @spaceship.longitude,
      lat: @spaceship.latitude
    }]
  end
end
