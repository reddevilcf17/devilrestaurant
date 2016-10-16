class OrdersController < ApplicationController
  def show
  	@order_items = current_order.order_items
  	@order = current_order
  	@order_item = current_order.order_items.new
  end

  def checkout
  	@order = current_order
  end

  def apply_coupon
  	if params[:apply_coupon]

  		@order = current_order
  		@order.set_coupon(params[:apply_coupon])
  		@order.save
  	end

  	@order = current_order

  end

  def complete_order
  	if params[:name] && params[:phone_number] && params[:email] && params[:address]
  		@order = current_order
  		@order.set_user_info(params[:name], params[:phone_number], params[:email], params[:address])
  		@order.order_status = 1 #Complete order
  		@order.save
  	end

  	@order = current_order
  end
end
