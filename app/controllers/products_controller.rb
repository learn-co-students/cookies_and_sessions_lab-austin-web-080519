class ProductsController < ApplicationController
    def index
        @cart = cart
    end

    def add
        @item = params.permit(:item).values[0]
        cart = session[:cart] || []
        cart << @item
        session[:cart] = cart
        redirect_to products_path
    end
end