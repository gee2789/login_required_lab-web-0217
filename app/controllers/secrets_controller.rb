class SecretsController < ApplicationController
  before_action :require_login

  def show
  end


  def require_login
    unless session.include? :name
      flash[:error] = 'You gotta be logged in brah'
      redirect_to root_path
    end
  end

end
