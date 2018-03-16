class Cart < ActiveRecord::Base
  has_many :product_quantities
  has_many :products, through: :product_quantities
end
