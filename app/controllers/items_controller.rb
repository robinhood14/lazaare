class ItemsController < ApplicationController
  
  def index

		@items = Item.all

  end

  def show

		@items = Item.find(params[:id])

  end

	private

	def items_params
		params.require(:items).permit(:title, :description, :price, :img_url)
	end

end