class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user["username"] = params["users"]["username"]
    @user["email"] = params["users"]["email"]
    @user["password"] = params["users"]["password"]
    @user.save
    redirect_to "/"
  end
end
