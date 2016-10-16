class RestaurantMailer < ApplicationMailer
	def order_confirm(email)
	    @email = email
	    mail(to: @email, subject: 'Sample Email')
	  end
end
