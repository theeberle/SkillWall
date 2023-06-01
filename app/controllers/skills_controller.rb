class SkillsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = <<~SQL
        skills.name @@ :query
        OR skills.description @@ :query
        OR skills.category @@ :query
        OR skills.address @@ :query
      SQL
      @skills = Skill.where(sql_query, query: params[:query])
    else
       @skills = Skill.all
    end

     # The `geocoded` scope filters only skills with coordinates
    @markers = @skills.geocoded.map do |skill|
      {
        lat: skill.latitude,
        lng: skill.longitude
      }
    end
  end

  def show
    @skill = Skill.find(params[:id])
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

end
