class CommentsController < ApplicationController
  def create
	@food_item = FoodItem.find(params[:food_item_id])
	@comment = @food_item.comments.create(params[:comment].permit(:name, :body, :star))
	redirect_to food_item_path(@food_item)
  end
end
