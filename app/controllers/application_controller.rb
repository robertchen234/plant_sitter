class ApplicationController < ActionController::Base


  def log_in!(owner)
      session[:owner_id] = owner.id
  end

  def logged_in?
      !!session[:owner_id]
  end



  private

    def authenticate
        redirect_to new_session_path unless logged_in?
    end





end
