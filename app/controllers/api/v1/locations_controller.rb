class Api::V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render "index.json.jbuilder"
  end

  def show
    @location = Location.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
