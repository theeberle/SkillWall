class PagesController < ApplicationController

  def profile
    @user = current_user
    @bookings = @user.bookings
    @skills = @user.skills

  skip_before_action :authenticate_user!, only: :home

end
