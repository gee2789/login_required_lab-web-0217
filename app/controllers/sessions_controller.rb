class SessionsController < ApplicationController

  def new #get /login
  end

  def show
    @user = current_user
  end

  def create #post /login
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to show_path
    else
      flash[:error] = "Need a valid user name"
      redirect_to root_path
    end
  end

  def destroy #post /logout
    if session[:name]==nil
      redirect_to login_path
    else
      session[:name]=nil
      redirect_to login_path
    end
  end


end
