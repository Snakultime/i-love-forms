class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!('username' => params[:username], 'bio' => params[:bio], 'email' => params[:email])
        if @user.save
           redirect_to "/"
        else

         end
  end

  def create_form
    @user = User.new
    @user.username = params["user"]["username"]
    @user.bio = params["user"]["bio"]
    @user.email = params["user"]["email"]
    if @user.save
       redirect_to "/"
    else

     end
  end
end
