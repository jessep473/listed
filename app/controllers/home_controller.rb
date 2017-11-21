class HomeController < ApplicationController
  def listing
    @houses = House.all
  end
end


