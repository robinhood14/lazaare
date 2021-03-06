class CartsController < ApplicationController
  
	 before_action :authenticate_user!

  def show 
     
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    $cart = Cart.find_by user_id:(current_user.id)
    @cartcontent = SelectedItem.where(cart_id: $cart.id)
    @subtotal = 0
    $itemcount = 0
    @cartcontent.each do |item|
      @object = Item.find_by id:(item.item_id)
      @subtotal += (@object.price * item.quantity)
      $itemcount += item.quantity
    end
  end
 		


  def update

    @item = (Item.find(params[:id])).id
    if user_signed_in?
      if $cart
        $cart.add_item(@item)
      else
        $cart = Cart.create(user_id: current_user.id)
        $cart.add_item(@item)
        redirect_to cart_path($cart)
      end
    else 
      redirect_to new_user_session_path
    end

  end

  def remove

   @item = (Item.find(params[:id])).id
   removable = SelectedItem.where(cart_id: $cart, item_id: @item).first
   if removable.quantity <= 1

      
      redirect_to cart_path($cart)

   else

      
      removable.update(quantity: removable.quantity.to_i - 1)
      

   end

  end 

  def delete
    @item = (Item.find(params[:id])).id
    deletable = SelectedItem.where(cart_id: $cart, item_id: @item).first

    deletable.delete
    redirect_to cart_path($cart)

  end




	 private

	 def cart_params
	   params.require(:cart).permit(:user_id, :item_id)
	 end

    def items_params
      params.require(:items).permit(:title, :description, :price, :img_url)
    end

end


=begin original DB
  
def show
    @cart = current_user.cart
    @currentUser = current_user.id
    @selectedItemListId = SelectedItem.find_by cart_id:(Cart.find_by user_id: @currentUser)
    @selectedItem = Item.find_by id:(@selectedItemListId.item_id)

  end


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

    if @CartUser
      @CartUser.items << Item.find(params[:id])
    else 
      @CartUser = Cart.create(user: current_user)
#            Cart.create(user: current_user, item: Item.find(params[:id]))
      #@CartUser = 0
      @CartUser.items << Item.find(params[:id])
    end
      redirect_to cart_path(current_user.cart)
=end