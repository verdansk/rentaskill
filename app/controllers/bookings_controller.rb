class BookingsController < ApplicationController
  def show
    @user =current_user
    @bookings = Booking.where("user_id = ?", @user.id)
  end

  def new
    @user = current_user
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.skill = @skill
    if @booking.save
      redirect_to skill_path(@skill.user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start,:date_end,:price)
  end
end

