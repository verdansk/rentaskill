class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description, :user_id)
  end
end
