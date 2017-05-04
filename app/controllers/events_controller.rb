class EventsController < ApplicationController
  def index
    @location = Location.find_by(id: params[:id])
    @events = Event.all
    render "index.html.erb"
  end

  def show
    @event = Event.find_by(id: params[:id])
    render "show.html.erb"
  end
end
