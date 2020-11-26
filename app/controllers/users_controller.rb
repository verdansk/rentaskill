class UsersController < ApplicationController
  def index
    @users = User.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
  end

  def show
    @user = User.find(params[:id])
    @new_skill = Skill.new
    @new_booking = Booking.new
    @bookings = Booking.where('user_id = ?', @user.id)
  end
end
