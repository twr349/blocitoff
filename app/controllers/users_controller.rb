class UsersController < ApplicationController
  
  def show
    @item = Item.new
    @items = current_user.items
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_sign_in
  end

end
