class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @booking = Booking.find(params[:booking_id])
    if @review.save
      redirect_to booking_review_path(@booking)
    else
      render :new
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
