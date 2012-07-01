class Cart < ActiveRecord::Base
  attr_accessible :title, :body, :product
  has_many :line_items, dependent: :destroy
end
