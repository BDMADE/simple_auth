class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# We need a mechanism to access the current_user everywhere in the application. 
# For that we add a current_user method to the ApplicationController and use helper_method 
# to provide a helper method for the views too.
  private
  def current_user
    User.where(id: session[:user_id]).first
  end

## authorize user; it prevents to enter restricted page as like as admin page.
## How to use of this funciton
## example: from a controller ,think a controller has admin page, 
## you want to restricted this page until you log in correctly
## Just use this in your controller page :

## before_action :authorized?, except: :index
  def authorized?
  	if current_user.nil?
  	redirect_to login_path, alert: "Not authorized! Please log in."
    end
  end

## check in system- is it admin ?

def admin?  
current_user.role_id == 1
end

# set permission for admin,page will not be seen without admin.
def is_not_admin?
  if not admin?
     redirect_to root_path, notice: "You do not have any permission to grant this page !"
  end
end


  # use this method in everywhere.
  helper_method :current_user
  helper_method :authorized?
  helper_method :admin?
  helper_method :is_not_admin?
end

