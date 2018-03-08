class OrdersController < ApplicationController





  def create



   @order = Order.create(user: current_user)

   @order.items << current_user.cart.items

 end



 

 def payment

  @total = 0

 current_user.cart.items.each do |item|

   @total += item.price

  end

  

  @amount = @total



  customer = Stripe::Customer.create(

    :email => params[:stripeEmail],

    :source => params[:stripeToken]

    )



  charge = Stripe::Charge.create(

    :customer     => customer.id,

    :amount       => @amount.to_i,

    :description  => 'Paiement en cours',

    :currency     => "eur",

    )



rescue Stripe::CardError => e

  flash[:error] = e.message

  create

  empty_cart

  redirect_to user_profile_path(current_user.id)

  flash[:success] = "Lazaare vous remercie d'avoir passé commande sur notre site"

end

end