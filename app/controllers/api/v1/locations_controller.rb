class Api::V1::LocationsController < ApplicationController
  def index
    if !current_user
      @locations = Location.all.limit(1) 
    elsif current_user 
      # sites_visited = current_user.location_users.where(visited: true)
      @locations = Location.joins(:location_users).where({ location_users: { visited: true } })
    # Location.first.location_users.first.visited
    end
    render "index.json.jbuilder"
    
  end

  def show
    @location = Location.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
