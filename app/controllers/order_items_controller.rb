class OrderItemsController < ApplicationController
	def create

		@order = current_order
		@order_item = @order.find_by_food_item(order_item_params[:food_item_id]).first

		if @order_item.nil?
			@order_item = @order.order_items.new(order_item_params)
		else
			@new_order_params = order_item_params

			@new_order_params[:quantity] = @order_item.quantity + order_item_params[:quantity].to_i

			@order_item.update_attributes(@new_order_params)
			@order_item.save

		end
		@order.save
		session[:order_id] = @order.id
	end

	def update

		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.update_attributes(order_item_params)
		@order_items = @order.order_items
	end

	def destroy
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@order_item.destroy
		@order_items = @order.order_items
	end

	private
	def order_item_params
		params.require(:order_item).permit(:quantity, :food_item_id)
	end
end
