class SessionsController < ApplicationController
  # login form
  def new
  end

# action of login form
  def create
   user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url, notice: 'Logged in!'
    else
      redirect_to new_session_path,notice: 'Authentication failed !'
    end
  end

# action of logout form
  def destroy
  	session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
