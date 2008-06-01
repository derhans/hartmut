class Hospital < ActiveRecord::Base
  has_many :departments
  belongs_to :address
end
