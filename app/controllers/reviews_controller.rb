class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @booking.review = params[:booking][:review]
    @booking.rating = params[:booking][:rating]
    if @booking.save(validate: false)
      redirect_to bookings_path
    else
      @bookings = Booking.where(user: current_user)
      render 'bookings/index'
    end
  end

  def show
    @review = Review.find(params[:id])
    @booking = Booking.where(booking_id: @booking.id)
  end

  def index
    @reviews = Review.all
  end

  private

  def review_params
    params.require(:booking).permit(:review, :rating)
  end
end
