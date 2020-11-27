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
    @new_review = Review.new

    @score = []
    @review_score = @user.reviews.each do |review|
      @score << review.rating
    end
    if @score.count > 0
      @rating = @score.sum / @score.count
    else @rating = 0
    end
  end
end
