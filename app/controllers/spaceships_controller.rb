class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @spaceships = Spaceship.all
  end

  def show
    @spaceship = Spaceship.where.not(latitude: nil, longitude: nil) && Spaceship.find(params[:id])
    @markers = [{
      lng: @spaceship.longitude,
      lat: @spaceship.latitude
    }]
    @disableddate = @spaceship.bookings.map do |booking|
      {
        from: booking.start_at.strftime("%Y-%m-%d"),
        to: booking.end_at.strftime("%Y-%m-%d")
      }
    end
  end
end
