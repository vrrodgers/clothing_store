class CartedItemsController < ApplicationController
    before_action :authenticate_user!

    def index
        # if user_signed_in?
        @order = Order.find_by( user_id: current_user.id, status: "carted")
        if @order
        @carted_items = @order.carted_items
        else
        flash[:warning] = "There is nothing in your shopping cart."
        redirect_to "/"
        end
    end

    def create
        order = Order.find_by( status: "carted", user_id: current_user.id)
        
        if order
        CartedItem.create( product_id: params[:product_id], quantity: params[:quantity], order_id: order.id)
        else
        Order.create( status:  "carted", user_id: current_user.id)
        CartedItem.create( product_id:  params[:product_id], quantity: params[:quantity], order_id: order.id)
        end
        flash[:success] = "Added to shopping cart!"
        redirect_to '/'
       
    end

end
