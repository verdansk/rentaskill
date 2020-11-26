class SkillsController < ApplicationController
  before_action :set_skill_id, only: [:show]

  def index
    @skills = Skill.all
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def show
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(strong_params_skills)
    @user = current_user
    @skill.user = @user
    if @skill.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def search
    @users = []
    @skills = Skill.all.where("lower(name) LIKE ?", "%#{params["search"].downcase}%")
    @skills.each do |skill|
      @users << User.find(skill.user_id)
    end
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
    render :index
  end

  def category
    @category = params[:category]
    @users = []
    @skills = Skill.all.where("category = ?", "#{params[:category]}")
    @skills.each do |skill|
      @users << User.find(skill.user_id)
    end
    # raise
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
    @users.uniq!
    # render :index
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to user_path(@skill.user)
  end

  private

  def set_user_id
    @skill = skill.find(params[:id])
  end

  def strong_params_skills
    params.require(:skill).permit(:name, :price_per_day, :category)
  end
end
