class SkillsController < ApplicationController
  before_action :set_skill_id, only: :show

  def index
  @skills = Skill.all
  end

  def show
  end

  private

  def set_skill_id
    @skill = Skill.find(params[:id])
  end
end
