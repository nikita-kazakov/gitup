class Product < ApplicationRecord

  scope :chairs, lambda {where(name:"Chair")}
  scope :tables, lambda {where(name:"Table")}
  scope :lamps, lambda {where(name:"Lamp")}

  #scope :price_between, lambda {where(price: 50..100)}


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

  def self.update_price_batch
    Product.in_batches do |batch|
      sleep 2
      batch.update_all(inventory: 300)
    end
  end


end
