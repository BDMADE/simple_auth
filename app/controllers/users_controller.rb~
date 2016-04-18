class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :match_user,only: :edit
  before_action :authorized?, except: [:signup,:create]
  before_action :admin?, except: [:signup,:create]
  before_action :is_not_admin?, except: [:signup,:create,:edit,:show,:update]

  layout 'adminLayout', except: :signup


  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { 
        if params[:user_new]
            redirect_to @user, notice: 'An user was successfully created.'
          else 
          session[:user_id] = @user.id
          redirect_to root_url, notice: 'An user was successfully created.' 
        end
        }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  # sign up page
  def signup
    if current_user.nil?
      @user = User.new
    else
      redirect_to root_url ,notice: "Already signed in !"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

  # it matches current user with database and prevents to edit/update other user profile
  def match_user
    if not admin?
       user= User.find(current_user)

          if not user.id==set_user.id
            redirect_to admin_url,notice: 'You have not permission to grant this page !'
          end
    end
  
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation,:role_id)
    end
end

