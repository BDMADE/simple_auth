class SessionsController < ApplicationController
  # login form
  def new
    if current_user.nil?
     render :new
    else
      redirect_to root_url,notice: 'You are already logged in !'
 
    end
  end

# action of login form
  def create
   user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # only admin can enter this page
      if admin?
      redirect_to admin_url, notice: 'Logged in!'
      else
        redirect_to root_url, notice: 'Logged in!'
      end

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

