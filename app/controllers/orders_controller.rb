class OrdersController < ApplicationController
  def create

 		@order = Order.create(user: current_user)
 		@order.items << current_user.cart.items
  end

  def delete
  	current_user.cart.items = []
  end

  def payment
  end
end
