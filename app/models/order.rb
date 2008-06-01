class Order < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :department
  has_many :positions
end
