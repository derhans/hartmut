class Vendor < ActiveRecord::Base
  belongs_to :address
  has_one :infoset
  has_many :orders
end
