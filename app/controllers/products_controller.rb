class ProductsController < ApplicationController
    def index
        @cart = cart
    end

    def add
        @product = params.permit(:product).values[0]
        cart = session[:cart] || []
        cart << @product
        session[:cart] = cart
        redirect_to products_path
    end
end