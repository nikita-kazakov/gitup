class Sku < ApplicationRecord
  belongs_to :product

  delegate :description, to: :product

  def price
    product.price
  end

end
