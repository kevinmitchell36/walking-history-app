class Api::V1::LocationsController < ApplicationController
  def index
    # @locations = Location.all
    if !current_user
      @locations = Location.all.limit(1) 
    elsif current_user 
      @locations = Location.joins(:location_users).where({ location_users: { visited: true, user_id: current_user } })
    end
    render "index.json.jbuilder"
    
  end

  def show
    @location = Location.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @location = Location.joins(:location_users).where({ location_users: { visited: false, user_id: current_user } })
    @location_users.visited = "true"
    
    redirect_to "/"
  end

end
