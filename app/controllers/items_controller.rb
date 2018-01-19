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
   
   def destroy
    @item = Item.find(params[:id])
    
    if @item.destroy
       flash[:notice] = "\"#{@item.name}\" was completed!."
       redirect_to current_user
     else
       flash.now[:alert] = "Can not compute, try again."
       render :show
    end
   end
    
end
