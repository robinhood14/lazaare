class ItemsController < ApplicationController
  
  def index

		@items = Item.all
		
		if user_signed_in?
    	$cart = Cart.find_by user_id:(current_user.id)
    else
    	$cart = 1

    end

  end

  def show

		@items = Item.find(params[:id])

  end

	private

	def items_params
		params.require(:items).permit(:title, :description, :price, :img_url)
	end


end