class SkillsController < ApplicationController
skip_before_action :authenticate_user!, only: :index

  def index

    @skills = Skill.all
    @categories = Skill.pluck(:category).uniq

    # filter with category
    if params[:category].present?
      @skills = @skills.where(category: params[:category])
    end

    # filter with Search
    if params[:query].present?
      sql_query = <<~SQL
        skills.name @@ :query
        OR skills.description @@ :query
        OR skills.category @@ :query
        OR skills.address @@ :query
      SQL
      @skills = Skill.where(sql_query, query: params[:query])
    end

     # The `geocoded` scope filters only skills with coordinates
    @markers = @skills.geocoded.map do |skill|
      {
        lat: skill.latitude,
        lng: skill.longitude,
        # added for the popup:
        info_window_html: render_to_string(partial: "info_window", locals: {skill: skill}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @skill = Skill.find(params[:id])

    @markers = [{
      lat: @skill.latitude,
      lng: @skill.longitude
    }]
  end

  def new
    @skill = Skill.new
    @markers = [] # Initialize an empty array for markers

  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    ## adding placeholder photo logic check the
      if @skill.photo_url.blank?
        @skill.photo_url = 'https://images.unsplash.com/photo-1589652717521-10c0d092dea9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2tpbGx8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
      end

    if @skill.save
      @skill.geocode
    # Create a marker for the skill with its latitude and longitude
    @markers = [{

      lat: @skill.latitude,
      lng: @skill.longitude
    }]

      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :description, :category, :address, :photo_url)
  end

end
