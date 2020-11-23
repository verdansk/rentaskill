class BookingsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @bookings = Booking.where("user_id = ?", @user.id)
  end

  def new
    @user = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    #params.require(:booking).permit(:date_start,:date_end,:price)
  end
end
