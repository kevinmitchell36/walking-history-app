class LocationsController < ApplicationController
  def index
    
    
    render "index.html.erb"
  end

  def reset
    
    @location_user = LocationUser.where(discovered: true, visited: true).update_all(visited: false, discovered: false)
    location_user = LocationUser.find_by(
      user_id: current_user.id,
      location_id: 1
      )
    location_user.discovered = true
    location_user.save

    redirect_to '/'
  end

  def show
    @location = Location.find_by(id: params[:id])
  end


end
