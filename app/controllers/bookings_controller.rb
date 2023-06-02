class BookingsController < ApplicationController
  # fixed booking path
  before_action :set_skill, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.skill = @skill
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path
    else
      render :new
    end

  end
  private
  def set_skill
    @skill = Skill.find(params[:skill_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
