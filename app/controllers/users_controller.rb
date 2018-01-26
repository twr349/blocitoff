class UsersController < ApplicationController
  
  def show
    @item = Item.new
    @items = current_user.items
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Account deleted"
    redirect_to new_user_session_url
  end

end
