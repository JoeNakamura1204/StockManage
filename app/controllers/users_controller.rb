require "user.rb"

class UsersController < ApplicationController
  def show
    # @user = User.find_user(params[:id])
    print(@user)
  end
end
