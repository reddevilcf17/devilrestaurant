class Order < ApplicationRecord
	has_many :order_items

	before_create :init_data
  	before_save :update_total

	def total
		order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.food_item.price) : 0 }.sum
	end

	def coupon_ratio	
		@coupon_ratio = 0	
		if self.coupon.nil?
			@coupon_ratio = 0
		elsif self.coupon.to_s == 'CODERSCHOOL'
			@coupon_ratio = 0.5
		end

		@coupon_ratio
	end

	def set_coupon(coupon_code)
		self.coupon = coupon_code
	end

	def set_user_info(name, phone, email, address)
		self.name = name
		self.phone_number = phone
		self.address = address
		self.email = email
	end

	def find_by_food_item(food_item_id)
		order_items.select{|order_item| order_item.food_item.id.to_s == food_item_id.to_s}
	end

	private
	def init_data
		self.order_status = 0
		self.delivery_fee = 20000
	end

	def update_total
		self[:total] = total
	end

	

end
