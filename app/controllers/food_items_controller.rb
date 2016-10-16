class FoodItemsController < ApplicationController
  def show
  	@food_item = FoodItem.find(params[:id])
    impressionist(@food_item, nil ,unique: [:session_hash])
    @order_item = current_order.order_items.new
  end
end
