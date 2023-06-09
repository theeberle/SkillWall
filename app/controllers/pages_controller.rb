class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :profile

  def profile
    @user = current_user
   # @bookings = @user.bookings
    @bookings = @user.bookings.includes(:skill) # Load associated skill data
    @skills = @user.skills
  end

end
