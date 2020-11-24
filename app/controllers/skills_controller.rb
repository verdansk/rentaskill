class SkillsController < ApplicationController
  before_action :set_skill_id, only: [:show]

  def index
    @skills = Skill.all
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
      redirect_to skills_path
    else
      render :new
    end
  end

  def search
    @users = []
    @skills = Skill.all.where("name = ?", "#{params["search"]}")
    @skills.each do |skill|
      @users << User.find(skill.user_id)
    end
    render :index
  end

  private

  def set_user_id
    @skill = skill.find(params[:id])
  end

  def strong_params_skills
    params.require(:skill).permit(:name, :description, :price_per_day)
  end
end
