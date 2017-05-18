class UsersController < ApplicationController
  def new
    render 'new.html.erb'

  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      username: params[:username],
      password: params[:password],
      
      level: 0,
      password_confirmation: params[:password_confirmation]
    )
    location_user = LocationUsers.create(
      user_id: params[:user_id],
      location_id: params[:location_id[0]],
      visited: false,
      discovered: true
      )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/signup'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
    

  end


end
