class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @skills.geocoded.map do |skill|
    {
      lat: skill.latitude,
      lng: skill.longitude
    }
    end
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name)
  end

  def show
    @skill = Skill.find(params[:id])
  end
end
