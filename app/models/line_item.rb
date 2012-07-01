class LineItem < ActiveRecord::Base
  attr_accessible :product, :product_id, :quantity, :cart_id
  belongs_to :product
  belongs_to :cart
  
  def total_price
    product.price * quantity
  end  
end
