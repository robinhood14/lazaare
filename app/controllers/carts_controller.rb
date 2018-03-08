class CartsController < ApplicationController
  
	 before_action :authenticate_user!

  def show 
    $cart = Cart.find_by user_id:(current_user.id)
    @cartcontent = SelectedItem.where(cart_id: $cart.id)
    @subtotal = 0
    @cartcontent.each do |item|
      @object = Item.find_by id: item.item_id
      @subtotal += @object.price 
    end
  end
 		


  def update

    if user_signed_in?
      if @CartUser
        @CartUser.items << Item.find(params[:id])
        
        redirect_to cart_path(current_user.cart)
      end
    else 
      redirect_to new_user_session_path
    end

  end

	 private

	 def cart_params
	   params.require(:cart).permit(:user_id, :item_id)
	 end

end



=begin original DB
  
def show
    @cart = current_user.cart
    @currentUser = current_user.id
    @selectedItemListId = SelectedItem.find_by cart_id:(Cart.find_by user_id: @currentUser)
    @selectedItem = Item.find_by id:(@selectedItemListId.item_id)

  end

=begin
  def update


    if user_sign_in?
      if current_user.cart
        ##add items
      else 
        Cart.create(user: current_user)
      end
     redirect_to cart_path(current_user.cart)

    else 
      redirect_to new_user_session_path
    end
  end

  def delete
    #find selected items
    current_user.cart -= #selected_items

  end

=end