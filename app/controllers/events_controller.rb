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

  def edit
    @event = Event.find_by(id: params[:id])
    render "edit.html.erb"
    
  end

  def update
    @event = Location.joins(:location_users).where({ location_users: { visited: false, user_id: current_user } })
    @location_users.visited = true
    redirect_to "/"
  end

  def calculated
    puts "-" * 50
    puts "Here are the places you have yet to visit:"
    @locations = Location.joins(:location_users).where({ location_users: { discovered: false, user_id: current_user } })
    # puts @locations
    # @locations.each do |location|
    #   puts location.current_name
    # end
    # puts "-" * 50

    location_user = LocationUser.find_by(
      user_id: current_user.id,
      location_id: @locations.sample.id
    )
    location_user.discovered = true
    location_user.save

    redirect_to "/"

  end
end
