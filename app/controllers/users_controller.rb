class UsersController < ApplicationController

  def create
    if @user = User.create(params[:user])
      response = { :success => true }
    else
      response = { :success => false }
    end

    render :json => response
  end

end