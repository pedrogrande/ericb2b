class Session < ActiveRecord::Base
  attr_accessible :retailer_id
  has_one :cart
end
