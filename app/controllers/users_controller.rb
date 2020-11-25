class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @new_skill = Skill.new
    @new_booking =Booking.new
    @bookings = Booking.where('user_id = ?', @user.id)
  end
end
