class UserController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.new('username' => params[:username], 'bio' => params[:bio], 'email' => params[:email])
          if @user.save
             redirect_to "/"
          else
             render 'new'
          end
  end
end
