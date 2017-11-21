class HomeController < ApplicationController
  def listing
    @houses = House.where(user: current_user)
  end
end


