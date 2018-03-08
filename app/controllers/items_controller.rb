class ItemsController < ApplicationController
  
  def index

		@items = Item.all
		
		if user_signed_in?

      unless Cart.find_by user_id:(current_user.id)
        $cart = Cart.create(user_id: current_user.id)
      else        
    	 $cart = Cart.find_by user_id:(current_user.id)
      end
      
    else

    	$cart = 1

    end

  end

  def show

		@items = Item.find(params[:id])

  end

  def add_to_cart
  
  	CartsController.update

  end


	private

	def items_params
		params.require(:items).permit(:title, :description, :price, :img_url)
	end


end