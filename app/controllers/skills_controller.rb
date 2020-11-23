class SkillsController < ApplicationController
  before_action :set_skill_id, only: [:show]

  def index
    @skills = Skill.all
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @skill = Skill.new
  end

  def create
    @user = User.find(params[:user_id])
    @skill = Skill.new(strong_params_skills)
    @skill.user = @user
    if @skill.save
      redirect_to skills_path
    else
      render :new
    end
  end

  private

  def set_user_id
    @skill = skill.find(params[:id])
  end

  def strong_params_skills
    params.require(:skill).permit(:name, :description, :price_per_day)
  end
end
