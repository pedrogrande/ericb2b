class LineItem < ActiveRecord::Base
  belongs_to :cart
  attr_accessible :cost, :product_size_id, :quantity
end
