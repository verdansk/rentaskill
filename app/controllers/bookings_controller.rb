class BookingsController < ApplicationController
  before_action :set_user
  before_action :set_skill, only: [:new, :create]
  def show
    @bookings = Booking.where("user_id = ?", @user.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.skill = @skill
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def set_user
    @user = current_user
  end

  def set_skill
    @skill = Skill.find(params[:skill_id])
  end

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :price)
  end
end
