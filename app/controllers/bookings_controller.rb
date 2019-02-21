class BookingsController < ApplicationController
  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking.spaceship = @spaceship
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
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
