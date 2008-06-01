class Department < ActiveRecord::Base
  belongs_to :hospital
  has_many :orders

  has_and_belongs_to_many :articles
end
