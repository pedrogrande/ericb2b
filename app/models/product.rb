class Product < ActiveRecord::Base
  has_many :product_sizes
  has_many :sizes, :through => :product_sizes
  belongs_to :supplier
  attr_accessible :cost, :name, :sizes_attributes
  accepts_nested_attributes_for :sizes, :allow_destroy => true
end
