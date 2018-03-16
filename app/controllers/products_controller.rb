class ProductsController < ApplicationController
  before_action :set_cart, only: :index

  def index
    @products = Product.all
  end

  private

  def set_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
end
