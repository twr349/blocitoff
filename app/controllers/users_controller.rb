class UsersController < ApplicationController
  def show
    @user = User.find_by_email(params[:user_email])
  end
end
