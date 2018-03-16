class CreateProductQuantity < ActiveRecord::Migration[5.1]
  def change
    create_table :product_quantities do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :cart_id
    end
  end
end
