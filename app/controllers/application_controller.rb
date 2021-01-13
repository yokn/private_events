# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def current_user
    User.find(session[:current_user_id]) if session[:current_user_id]
  end
  helper_method :current_user

  def require_login
    unless current_user
      flash[:error] = 'You must be logged in to access this section'
      redirect_to login_path
    end
  end
end
