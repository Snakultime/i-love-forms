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
    @post = User.create!('username' => params[:user][:username],
            'bio' => params[:user][:bio], 'email' => params[:user][:email])
    if @post.save
       redirect_to "/"
    else

     end
  end
end
