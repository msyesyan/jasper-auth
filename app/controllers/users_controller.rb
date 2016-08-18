class UsersController < ApplicationController
  def index
  end
  def show
    render json: User.first
  end
end
