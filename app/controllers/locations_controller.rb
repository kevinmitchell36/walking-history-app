class LocationsController < ApplicationController
  def index
    # if !current_user 
    #   @locations = Location.all.limit(1)
    # elsif current_user.level == 0
    #   @locations = Location.all.limit(1)
    # else
    #   @locations = Location.all
    # end
    render "index.html.erb"
  end

  def new
  end

  def create
  end

  def show
    @location = Location.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
