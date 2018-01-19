class ItemsController < ApplicationController
    
   def create
     @item = Item.new
     @item.name = params[:item][:name]
     @item.user = current_user
 
     if @item.save
       flash[:notice] = "Item added!"
     else
       flash[:alert] = "Can not compute :["
     end
     redirect_to current_user
   end
 
    
end
