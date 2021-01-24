# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by_username(params[:username])
    if @user
      session[:current_user_id] = @user.id
      flash[:login_success] = 'Logged in!'

      # TODO: find a way to redirect back
      redirect_to root_path
    else
      flash[:error] = 'Could not login'
      render :new
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end
end
