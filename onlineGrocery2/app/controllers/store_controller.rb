class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
	@products = Product.search(params[:search]).order("title ASC")
        @cart = current_cart
  end


  	def self.search(search)
		if search
			where('@products.title LIKE ?', "%#{search}%")
		else
			scoped
		end
	end
end
