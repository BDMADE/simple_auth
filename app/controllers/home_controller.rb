class HomeController < ApplicationController
before_action :authorized?, except: :index
	
  def index
  end

  def admin
  end
end
