class Product < ActiveRecord::Base
  has_one :product_quantity
  has_one :carts, through: :product_quantity
end
