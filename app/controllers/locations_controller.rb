class LocationsController < ApplicationController
  def index
    
    
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
