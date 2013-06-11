class Size < ActiveRecord::Base
  attr_accessible :size
  has_many :product_sizes
  has_many :products, :through => :product_sizes
end
