# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by_username(params[:username])
    if @user
      session[:current_user_id] = @user.id
      flash[:login_success] = 'Logged in!'
    else
      flash[:login_fail] = 'Could not login'
    end
    # need to find a way to redirect back
    redirect_to events_path
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end
end
