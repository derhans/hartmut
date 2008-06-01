class Position < ActiveRecord::Base
  belongs_to :status
  belongs_to :article
  belongs_to :order
end
