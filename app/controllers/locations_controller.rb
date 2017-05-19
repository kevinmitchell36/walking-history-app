class LocationsController < ApplicationController
  def index
    
    
    render "index.html.erb"
  end

  def show
    @location = Location.find_by(id: params[:id])
  end

  def reset
    
    location_users.where(discovered: true, visited: true).update_all(visted: false, discovered: false)
    
    redirect_to '/'
  end

end
