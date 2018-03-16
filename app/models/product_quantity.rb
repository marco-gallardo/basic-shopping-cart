class ProductQuantity < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def increase!
    self.quantity ? self.quantity += 1 : self.quantity = 1

    save!
  end
end
