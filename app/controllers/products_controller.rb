class ProductsController < ApplicationController
	def index 
		@products = Product.includes(:category).where(pushlished: true)
	end
end