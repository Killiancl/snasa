class BookingsController < ApplicationController
  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking.spaceship = @spaceship
    # TODO: set booking user to current_user
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render 'spaceships/show', locals: {booking: @booking, spaceship: @spaceship}
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def index
    @bookings = Booking.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at, :user_id, :spaceship_id)
  end

end

  #   params.require(:restaurant).permit(:name, :address, :stars)
  # end
