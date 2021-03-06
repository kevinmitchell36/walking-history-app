class EventsController < ApplicationController
  def index
    visited_location_users = current_user.location_users.where(visited: true)
    @events = []
    visited_location_users.each do |location_user|
      location_user.location.events.each do |event|
        @events << event
      end
    end
    @events.sort_by!{ |hsh| hsh[:date]}
    render "index.html.erb" 
  end

  def show
    @event = Event.find_by(id: params[:id])
    @location = Location.find_by(id: @event.location_id)
    @location_user = LocationUser.find_by(user_id: current_user.id, location_id: @location.id)
    render "show.html.erb"
  end

  def calculated
    @category = Category.find_by(id: params[:id])
    @event = Event.find_by(id: params[:id])
    @locations = Location.joins(:location_users).where({ location_users: { discovered: false, user_id: current_user.id } })
   
    if @locations.length > 0
      location_user = LocationUser.find_by(
        user_id: current_user.id,
        location_id: @locations.sample.id
      )
      location_user.discovered = true
      location_user.save
    end

    redirect_to "/"

  end

  def visited
    @location = Location.find_by(id: params[:location_id])
    @event = Event.find_by(id: params[:event_id])
    @location_user = LocationUser.find_by(
      user_id: current_user.id,
      location_id: params[:location_id]
    )
    if @location_user
      @location_user.visited = true
      @location_user.save
      
      redirect_to "/events/#{@event.id}"
    else
      redirect_to "/"
    end
    
  end
end
