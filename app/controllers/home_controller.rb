class HomeController < ApplicationController

	def index
		@order_item = current_order.order_items.new
		# RestaurantMailer.order_confirm('thanhhung.itbiz@gmail.com').deliver_now
	end

	def menu
		@sections = Section.all
		@sort = params[:sort]
	    @order_item = current_order.order_items.new

	    # @current_section = 0
	    # if session[:current_section].nil?
	    # 	session[:order_id] = 0
	    # else
	    # 	session[:order_id] = 
	    # end

	    #  = session[:order_id];

	end

	def sort_menu
		@sort = params[:sort]
		@order_item = current_order.order_items.new
	end

	def search
		if params[:search]
			@food_items = FoodItem.search(params[:search])
		else
			@food_items = FoodItem.all
		end
	end

	def contact_us
	end
end
