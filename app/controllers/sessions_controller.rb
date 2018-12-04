class SessionsController < ApplicationController

  def new

  end

  def create
    @owner = Owner.find_by(username: params[:username])
    if @owner && @owner.authenticate(params[:password])
      log_in!(@owner)
      redirect_to owners_path
      else
    end
  end

end
