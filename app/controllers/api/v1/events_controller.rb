class Api::V1::EventsController < ApplicationController
  
  def index
    @events = Event.all
    render "index.json.jbuilder"
  end

  def show
    @event = Event.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
