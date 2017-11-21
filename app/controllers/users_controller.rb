class UsersController < ApplicationController
  def show
    @houses = current_user.houses
  end
end