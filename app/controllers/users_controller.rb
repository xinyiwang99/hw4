class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user["username"] = params["user"]["username"]
    @user["email"] = params["user"]["email"]
    @user["password"] = params["user"]["password"]
    @user.save
    redirect_to "/users/#{@user["id"]}"
  end
end
