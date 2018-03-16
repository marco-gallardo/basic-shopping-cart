class CartsController < ApplicationController
  def update
    product_quantity = ProductQuantity.find_or_create_by(cart_id: params[:id], product_id: params[:product_id])
    product_quantity.increase!

    redirect_to '/products'
  end
end
