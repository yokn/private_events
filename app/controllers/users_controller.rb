# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    # redirect_to users_path
  end

  def show
    @user = user.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username)
  end
end
