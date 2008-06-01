class Article < ActiveRecord::Base
  belongs_to :unit
  has_many :positions
  has_one :infoset

  has_and_belongs_to_many :departments
end
