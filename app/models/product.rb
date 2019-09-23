class Product < ApplicationRecord

  #QTY SOLD (Run from console. have fun. Product.modify_qty_sold)
  def self.modify_qty_sold
    products = Product.all
    products.each do |product|
      product.update_attributes(qty_sold: 10)
    end
  end

  #Same as above method but with a custom NUMBER.
  def self.custom_qty_sold(num)
    products = Product.all
    products.each do |product|
      product.update(qty_sold:num)
    end
  end
end
