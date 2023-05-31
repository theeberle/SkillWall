class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @skill = Skill.find(params[:skill_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_date)
  end
end
