class ProductsController < ApplicationController
    def index
        cart
        render :index
    end
    
    def add_to_cart
        cart << params[:product]
        render :index
    end
end