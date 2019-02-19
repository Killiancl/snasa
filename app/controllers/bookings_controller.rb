class BookingsController < ApplicationController
  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    @spaceship = Spaceship.find(params[:spaceship_id])
      if @booking.save
        redirect_to spaceship_booking_path(@spaceship)
      else
        render :new
      end
  end

  def show
    @booking = Booking.find(params[:id])
    @spaceship = Spaceship.where(spaceship_id: @spaceship.id)
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:total_price, :review, :rating, :start_at, :end_at, :user_id, :spceship_id)
  end

end

  #   params.require(:restaurant).permit(:name, :address, :stars)
  # end
